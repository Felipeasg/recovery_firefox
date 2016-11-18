import json
import sys

total = len(sys.argv)

jsonfilefirefox = str(sys.argv[1])


with open(jsonfilefirefox) as json_data:
	parsed_json = json.load(json_data)
#	print(d)
	

#print(parsed_json)
#print(parsed_json['windows'])
#config = parsed_json['windows']
#print(parsed_json['windows'][0]['tabs'][0]['entries'][0]['url'])

config_len = len(parsed_json)
window_len = len(parsed_json['windows'])

print "***************"
print "* Config: %d  *" % config_len
print "* Windows: %d *" % window_len
print "***************"

for i in range(0, window_len):
	tabs_len = len(parsed_json['windows'][i]['tabs'])

	print "****************************"
	print "  Window[%d] have %d tabs. *" % (i, tabs_len)
	print "****************************"

	for j in range(0, tabs_len):
		entries_len = len(parsed_json['windows'][i]['tabs'][j]['entries'])
	
		print "    Tab[%d] have %d entries" % (j, entries_len)
	    
		for k in range(0, entries_len):
			print "     -> URL: %s" % parsed_json['windows'][i]['tabs'][j]['entries'][k]['url']


