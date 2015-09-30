version=2

rule=apache_common:%[
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
  {"type": "rest", "name": "blob", "priority": 65535}
]%

# may want to add tags to resulting JSON if this is matched
#annotate=apache_common:+tags="apache_common"
