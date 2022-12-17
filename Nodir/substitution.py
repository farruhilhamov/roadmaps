# Taking input from user
data = ""
 
 
# conversion Chart
conversion_code = {
    # Lowercase Alphabets
    'a': 'c',
    'b': 'm',
    'c': 'a',
    'd': 'w',
    'e': 'v',
    'f': 'u',
    'g': 't',
    'h': 's',
    'i': 'r', 
    'j': 'q', 
    'k': 'p', 
    'l': 'o',
    'm': 'b', 
    'n': 'v', 
    'o': 'l', 
    'p': 'k', 
    'q': 'j', 
    'r': 'g',
    's': 's', 
    't': 'm', 
    'u': 'F', 
    'v': 'e', 
    'w': 'd', 
    'x': 'c',
    'y': 'b', 
    'z': 'a'
}
 
# Creating converted output
converted_data = ""
 
 
for i in range(0, len(data)):
    if data[i] in conversion_code.keys():
        converted_data += conversion_code[data[i]]
    else:
        converted_data += data[i]
 
# Printing converted output
print(converted_data)