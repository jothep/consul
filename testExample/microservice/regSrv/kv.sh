#get all kv
consul kv get -recurse

#put
consul kv put tmp/abc 3

#get
consul kv get tmp/abc

#get detailed
consul kv get -detailed tmp/abc

#del
consul kv delete tmp/abc
