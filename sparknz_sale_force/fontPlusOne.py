# find lines from source which not exist in db

# sourcepath = 'readFailed.txt'
# dbFile = 'orgs.csv'
import os


directory = 'C:\\Users\\Teemo\\Documents\\Visual Studio 2010' \
             '\\Projects\\sms\\sapp_sms\\templates'

for filename in os.listdir(directory):
    try:
        if filename.endswith(".rdlc") \
                and "_5bc" in filename \
                and "invoice_template" not in filename\
                and "statement_template" not in filename\
                and ("ProprietorAged_5bc.rdlc" in filename or "AF_5bc.rdlc" in filename):
            line = ''
            with open(os.path.join(directory, filename)) as fp:
                line += fp.read() \
                    .replace('<FontSize>10pt</FontSize>', '<FontSize>11pt</FontSize>') \
                    .replace('<FontSize>9pt</FontSize>', '<FontSize>10pt</FontSize>') \
                    .replace('<FontSize>8pt</FontSize>', '<FontSize>9pt</FontSize>') \
                    .replace('<FontSize>7pt</FontSize>', '<FontSize>8pt</FontSize>') \
                    .replace('<FontSize>6pt</FontSize>', '<FontSize>7pt</FontSize>') \
                    .replace('<FontSize>5pt</FontSize>', '<FontSize>6pt</FontSize>') \
                    .replace('<FontSize>4pt</FontSize>', '<FontSize>5pt</FontSize>')
            with open(os.path.join(directory, filename), 'w') as fp:
                fp.write(line)
            continue
        else:
            continue
    except Exception as e:
        print(filename)
        print(type(e))  # the exception instance
        print(e.args)  # arguments stored in .args
        print(e)  # __str__ allows args to be printed directly

print("Replacement finished!")



