local inspect = require('inspect')
require 'fun' ()
require 'my-songs'
require 'my-flatten'

print(inspect( flatten( clean(extract(songs)) ) ))

