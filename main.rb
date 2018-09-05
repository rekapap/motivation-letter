# Print var
hi = [[0,[3,9,3,3,3,3,2]], [0,[3,9,3,3,3,3,2]], [0,[3,9,3,3,3,3,2]], [0,[15,3,3,3,2]], [0,[15,3,3,3,2]], [0,[3,9,3,3,3,3,2]], [0,[3,9,3,3,3,5]], [0,[3,9,3,3,3,3,2]]]
bye = [[0,[9,4,3,7,3,2,10,3,2]], [0,[3,6,2,3,3,5,3,3,3,10,2]], [0,[3,6,2,4,3,3,3,4,3,10,2]], [0,[9,9,3,7,7,6,2]], [0,[3,6,2,7,3,7,3,10,2]], [0,[3,6,2,7,3,7,3,10]], [0,[9,9,3,7,10,3,2]]]
ink = '▒'
paper = ' '

# ciphered text
secrets = {"Zl"=>[0, 25, 46], "anzr"=>[1], "vf"=>[2, 28, 52], "Erxn."=>[3], "V"=>[4, 16, 35, 37, 59], "unq"=>[5], "zl"=>[6, 23, 40, 85, 95], "svefg"=>[7], "rkcrevrapr"=>[8], "jvgu"=>[9], "pbqvat"=>[10, 43, 96], "nebhaq"=>[11], "10"=>[12], "lrnef"=>[13], "ntb"=>[14], "jura"=>[15], "fgnegrq"=>[17], "yrneavat"=>[18], "UGZY"=>[19], "naq"=>[20, 33, 73, 76], "PFF"=>[21], "ba"=>[22], "bja."=>[24, 86], "bevtvany"=>[26], "onpxtebhaq"=>[27], "tencuvp"=>[29], "qrfvta,"=>[30], "jro"=>[31], "qrfvta"=>[32], "Neg."=>[34], "oryvrir"=>[36], "pna"=>[38, 62], "rkcerff"=>[39], "perngvivgl"=>[41], "va"=>[42, 68], "nf"=>[44], "jryy!"=>[45], "znva"=>[47], "ernfba"=>[48], "gb"=>[49, 53, 66, 94], "wbva"=>[50], "Znxref"=>[51, 61, 87], "fgneg"=>[54], "n"=>[55, 69, 90], "cebsrffvbany"=>[56], "cebtenzzvat"=>[57], "pneevre."=>[58], "guvax"=>[60], "grnpu"=>[63], "zr"=>[64, 78], "ubj"=>[65], "cebtenz"=>[67], "zber"=>[70], "cebsrffvbanyyl"=>[71], "fgehpgherq"=>[72], "vafgehpgrq"=>[74], "jnl"=>[75], "uryc"=>[77], "yrnea"=>[79], "guvatf"=>[80], "juvpu"=>[81], "jbhyq"=>[82], "or"=>[83], "uneq"=>[84], "ybbxf"=>[88], "yvxr"=>[89], "tbbq"=>[91], "fgnegvat"=>[92], "cbvag"=>[93], "pneevre!"=>[97]}

load './lib/printer.rb'
load './lib/message.rb'

# Introduction with 2 prints and a message
printer = Printer.new
message = MessageMaker.new
printer.printer(ink, paper, hi)
message.wordize(secrets) # add your the shift number here if you changed it in the word_maker.rb
printer.printer('X', ' ', bye)