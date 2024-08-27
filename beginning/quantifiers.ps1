"domain is sattusup" -cmatch "domain+"
"hi i am satty" -cmatch "domain+"

"abcd" -cmatch "c?"
 "bhj" -cmatch  "b?"
 "cba" -cmatch "c?"

#  anchors

"i am an ai student" -cmatch "^\w"
"i am hahahihi" -cmatch "^\n"
"00:a0:f8:12:34:56" -match "^([0-9a-f]{2}:){5}[0-9a-f]{2}$"
"\\servername\Public\" -match "^\\{2}\w+\\{1}\w+"
