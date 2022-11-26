#[
  Main application in REPL app
  Display a menu and options
]#
  
# external modules
import std/terminal
import std/strutils

# external files
include menu
include hello
include integer

proc clear(): string {.discardable.} =
    eraseScreen()
    setCursorPos(0,0)
    
proc option(): int =
    write(stdout, "option:> ")
    var input = readLine(stdin)
    result = parseInt(input)
    return result

# call menu procedure
menu()

# read options and start
var op = option()

while op != 0:
  # option selection 
  case op
    of 1: clear(); menu()
    of 2: discard hello_world()
    of 3: echo op
    of 4: discard integer_demo()
    else:
      echo "not implemented"
  # read next option
  op = option()
echo "done"