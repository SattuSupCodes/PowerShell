#we work with ranges

"Now I check this string" -cmatch "(I|u)" #checking if either I or u exists in string]
"This is my string" -cmatch "[a-zA-Z]" #checking if string characters in range of a-z and A-Z
"123456" -cmatch "[0-4]" #checking if numbers lie in defined range
"1234" -cmatch "[6-9]" #returns false 
