# delete lines from sourcepath that specified in returnFile, save as resultFile

sourcepath = 'C:\\PythonScript\\readWriteFile\\SeemeSyncLog05042019'
returnFile = 'C:\\PythonScript\\readWriteFile\\errorlines.txt'
resultFile = 'C:\\PythonScript\\readWriteFile\\errorlines.txt'
resultFile2 = 'C:\\PythonScript\\readWriteFile\\errorlines2.txt'

with open(sourcepath) as fp:  
	line = fp.readline()
	cnt = 1
	skip = 0
	print('search begin')
	while line:
		findError = 0
		# with open(returnFile) as fp2:
		# 	errorLine = fp2.readline()
		# 	while errorLine:
		# 		if line.split(',')[0] == errorLine.split(',')[0]:
		# 			findError = 1
		# 			break
		# 		else:
		# 			errorLine = fp2.readline()
		if 'ERROR : ' in line:
			print('find error')
			with open(resultFile, 'a') as the_file:
				the_file.write(line.replace("  ",' ').replace(' ', '			', 4))
				cnt += 1

			with open(resultFile2, 'a') as the_file:
				the_file.write(line)
		
		# if findError == 0:
		# 	with open(resultFile, 'a') as the_file:
		# 		the_file.write(line)
		# 	cnt += 1
		# else:
		# 	skip += 1
		line = fp.readline()

print('search end')
print("Job finish, " + str(cnt) + " lines remained")
