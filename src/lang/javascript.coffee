#
# JavaScript highligher
#
# Copyright (C) 2011-2012 Nikolay Nemshilov
#
Colorifier.js = Colorifier.javascript = new Class Colorifier,

  comments: "/* */,//"
  keywords: "function,return,for,if,else,while,do,throw,try,catch,instanceof,break,continue"
  objects:  "var,new,this,self"
  booleans: "true,false,null,undefined,typeof"

  paint: (text)->
    @$super text, (text)->
      text.replace /(^|[^a-z0-9_])([a-z0-9_]+)(\s*:)/ig, (m, _1, _2, _3)->
        "#{_1}<span class=\"attribute\">#{_2}</span>#{_3}"

