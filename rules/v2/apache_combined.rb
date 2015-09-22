version=2

rule=:%[ 
  {"type": "word", "name": "clientip"},
  {"type": "literal", "text": " "},
  {"type": "word", "name": "ident"},
  {"type": "literal", "text": " "},
  {"type": "word", "name": "auth"},
  {"type": "literal", "text": " ["},
  {"type": "char-to", "name": "timestamp", "extradata": "]"},
  {"type": "literal", "text": "] \""},
  {"type": "word", "name": "verb"},
  {"type": "literal", "text": " "},
  {"type": "word", "name": "request"},
  {"type": "literal", "text": " HTTP/"},
  {"type": "float", "name": "httpversion"},
  {"type": "literal", "text": "\" "},
  {"type": "number", "name": "response"},
  {"type": "literal", "text": " "},
  {"type": "number", "name": "bytes"},
  {"type": "literal", "text": " \""},
  {"type": "char-to", "name": "referrer", "extradata": "\""},
  {"type": "literal", "text": "\" \""},
  {"type": "char-to", "name": "agent", "extradata": "\""},
  {"type": "literal", "text": "\""},
  {"type": "rest", "name": "blob"}
]%

# apache combined log (the "rest" parser in the end will make it accept additional fields and store them in the "blob" field)
