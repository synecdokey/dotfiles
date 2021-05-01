let s:bg = ['#132132', 233]
let s:hiddenfg = ['#607080', 60]
let s:red = ['#fd8489', 210]
let s:gold = ['#fedf81', 222]
let s:bglight = ['#435060', 236]
let s:mikan = ['#fb8965', 209]
let s:yellow = ['#f0eaaa', 229]
let s:skyblue = ['#a8d2eb', 153]
let s:palesakura = ['#e996aa', 175]
let s:weakfg = ['#8d9eb2', 103]
let s:whiteblue = ['#d8e2f0', 195]
let s:whitepink = ['#ebeadb', 224]
let s:whitered = ['#ffbfaf', 217]

let s:error = [ [ s:bg, s:red ] ]
let s:warning = [ [ s:bg, s:mikan ] ]

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [ [ s:bg, s:gold ] ]
let s:p.normal.right = [ [ s:gold, s:hiddenfg ] ]
let s:p.normal.middle = [ [ s:yellow, s:bglight ] ]
let s:p.normal.error = s:error
let s:p.normal.warning = s:warning

let s:p.insert.left = [ [ s:bg, s:skyblue ] ]
let s:p.insert.right = [ [ s:skyblue, s:hiddenfg ] ]
let s:p.insert.middle = [ [ s:whiteblue, s:bglight ] ]

let s:p.visual.left = [ [ s:bg, s:palesakura ] ]
let s:p.visual.right = [ [ s:palesakura, s:hiddenfg ] ]
let s:p.visual.middle = [ [ s:whitepink, s:bglight ] ]

let s:p.replace.left = [ [ s:bg, s:red ] ]
let s:p.replace.right = [ [ s:red, s:hiddenfg ] ]
let s:p.replace.middle = [ [ s:whitered, s:bglight ] ]

let s:p.inactive.left = [ [ s:weakfg, s:bglight ] ]
let s:p.inactive.right = [ [ s:weakfg, s:bglight ] ]
let s:p.inactive.middle = [ [ s:weakfg, s:bglight ] ]

let g:lightline#colorscheme#spring_night#palette = lightline#colorscheme#flatten(s:p)
