from openpyxl import load_workbook
import os,re,html,datetime
import xml.etree.ElementTree as ET
import uuid

directory = os.path.dirname(os.path.realpath(__file__))
xmlfile = r"Solutions.xml"
sql_file = r"generate_wikis.sql"
with open(sql_file, 'w+') as fp:
        fp.write("""
        -- !!!!!
        -- !!!!!
        -- generate wiki sql script come from XML
        -- !!!!!
        -- !!!!!
        """)



line_count = 0
finalized_count = 0

to_be_deleted_creditor_id_12032019 = ""
finalized_creditor_id_12032019 = ""
all_finalized_code = ""
update_code = ""

root = ET.parse(xmlfile).getroot()
for category in root.findall('solution-category'):
    name1 = category.find('name').text.replace(' ','')
    folders = category.find('folders')
    for folder in folders.findall('solution-folder'):
        name2 = folder.find('name').text.replace(' ','')
        articles = folder.find('articles')
        for article in articles.findall('solution-article'):
            name3 = article.find('title').text
            testing = article.find('description').text
            try:
                testing = html.unescape(testing)
            except:
                pass

            testing = re.sub(
                r'<p>', 
                '',
                testing
                )
            testing = re.sub(
                r'</p>', 
                r'mylinebreak',
                testing
                )

            testing = re.sub(
                r'<strong>', 
                r'',
                testing
                )
            testing = re.sub(
                r'</strong>', 
                r'',
                testing
                )

            testing = re.sub(
                r'<hr>', 
                r'mylinebreak----mylinebreak',
                testing
                )
            testing = re.sub(
                r'<br>', 
                r'mylinebreak',
                testing
                )

            # span 16px -> H3
            pattern = re.compile(r'\<span style\=\"font\-size\: 16px.*?\>.*?\<\/span\>')
            for grp in re.findall(pattern, testing):
                spanStr = grp
                spanStr = re.sub(
                    r'\<span style\=\"font\-size\: 16px.*?\>', 
                    r' === ',
                    spanStr
                    )
                spanStr = re.sub(
                    r'</span>', 
                    r' === ',
                    spanStr
                    )
                testing = testing.replace(grp, spanStr)

            # span 18px -> H2
            pattern = re.compile(r'\<span style\=\"font\-size\: 18px.*?\>.*?\<\/span\>')
            for grp in re.findall(pattern, testing):
                spanStr = grp
                spanStr = re.sub(
                    r'\<span style\=\"font\-size\: 18px.*?\>', 
                    r'\r\n== ',
                    spanStr
                    )
                spanStr = re.sub(
                    r'</span>', 
                    r' == ',
                    spanStr
                    )
                testing = testing.replace(grp, spanStr)

            #iamge
            pattern = re.compile(r'\<img.*?\>')
            for grp in re.findall(pattern, testing):
                m = re.search(r'(?<=original\/).*?(?=\?)',grp)
                if m:
                    imgFileName = m.group()
                    if '.jpg' in imgFileName:
                        testing = testing.replace(grp, "{{/"+imgFileName+"|}}")
                    else:
                        testing = testing.replace(grp, "{{/"+imgFileName+".png|}}")
            
            testing = re.sub(
                r'mylinebreak', 
                r'\r\n',
                testing
                )

            # testing = re.sub(
            #     r'========', 
            #     r'',
            #     testing
            #     )
            # testing = re.sub(
            #     r'======', 
            #     r'',
            #     testing
            #     )

            testing = re.sub(
            r'<li>', 
            r'<li>\r\n',
            testing
            )

            testing = re.sub(
            r'\r\n\s*\r\n', 
            r'\r\n',
            testing
            )

            # testing = re.sub(
            # r'\r\n', 
            # r'<br>',
            # testing
            # )
            # testing = re.sub(
            # r'\n', 
            # r'<br>',
            # testing
            # )
            # testing = re.sub(
            # r'\r', 
            # r'<br>',
            # testing
            # )
            testing = re.sub(
            r'<br><br>', 
            r'<br>',
            testing
            )

            testing = re.sub(
            r'style="font-family: Helvetica, sans-serif;"', 
            r'',
            testing
            )
            testing = re.sub(
            r'class=""', 
            r'',
            testing
            )

            # keep only letters in string [duplicate]
            tagsStr = ''.join(x for x in name1 if x.isalpha()) + "," + ''.join(x for x in name2 if x.isalpha())

            with open(os.path.join(directory, sql_file), 'a+', encoding="utf-8") as fp:
                fp.write(
"""
insert into roadkill.roadkill_pages (Title, Tags, CreatedBy, CreatedOn, IsLocked, ModifiedOn) values
('"""+name3.replace("\'","\\\'")+"""', '"""+tagsStr+"""', 'admin', '"""+datetime.datetime.now().strftime('%Y-%m-%d %H:%M')+"""', 1, '"""+datetime.datetime.now().strftime('%Y-%m-%d %H:%M')+"""');
set @liid = (select last_insert_id());
insert into roadkill.roadkill_pagecontent (Id, EditedBy, EditedOn, VersionNumber, Text, PageId) values
('"""+str(uuid.uuid4())+"""', 'admin', '"""+datetime.datetime.now().strftime('%Y-%m-%d %H:%M')+"""', 1, '"""+ testing.replace("\r","\\r").replace("\n","\\n").replace("\'","\\\'") +"""', @liid);
"""
                        )
            finalized_count += 1

print("{} articles generated.".format(finalized_count))