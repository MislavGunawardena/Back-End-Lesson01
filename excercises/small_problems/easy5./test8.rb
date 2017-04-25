var = 'abc'.freeze
p 'abc'.freeze.object_id
p 'abc'.freeze.object_id
p 'abc'.freeze.object_id
p '-----'

var2 = 'def'
var2.freeze
p var2.freeze.object_id
p 'def'.freeze.object_id
p 'def'.freeze.object_id
