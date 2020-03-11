# delete lines from sourcepath that specified in returnFile, save as resultFile

sourcepath = 'SecretaryTemplate (3).csv'
returnFile = 'SecretaryTemplate-clean.csv'
resultFile = 'remain.csv'

with open(sourcepath) as fp:  
	line = fp.readline()
	cnt = 1
	skip = 0
	while line:
		findError = 0
		with open(returnFile) as fp2:
			errorLine = fp2.readline()
			while errorLine:
				if line.split(',')[0] == errorLine.split(',')[0]:
					findError = 1
					break
				else:
					errorLine = fp2.readline()
		
		if findError == 0:
			with open(resultFile, 'a') as the_file:
				the_file.write(line)
			cnt += 1
		else:
			skip += 1
		line = fp.readline()

print("Job finish, " + str(cnt) + " lines remained")
