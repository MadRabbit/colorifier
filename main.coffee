#
# Colorifier main file
#
# Copyright (C) 2011 Nikolay Nemshilov
#

# hook up dependencies
core    = require('core')
$       = require('dom')

# local variables assignments
ext     = core.ext
Class   = core.Class
Element = $.Element

# a quick re-escape
escape = (str)->
  str.replace(/([.*+?\^=!:${}()|\[\]\/\\])/g, '\\$1')

# glue in your files
include 'src/colorifier'
include 'src/lang/javascript'
include 'src/lang/css'
include 'src/lang/html'
include 'src/lang/coffeescript'
include 'src/lang/ruby'
include 'src/lang/erb'
include 'src/lang/console'
include 'src/lang/unsupported'

$(Colorifier.initialize); # kick in when page's loaded

# export your objects in the module
exports = ext Colorifier,
  version: '%{version}'
