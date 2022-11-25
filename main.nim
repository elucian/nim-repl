#[
  Main application in REPL app
  Display a menu and options
]#
import std/terminal
import std/strutils
  
echo "Nim REPL demo!"

# display the main menu
proc menu(): string {.discardable.} =
    echo "--------------"
    echo " 0) exit"
    echo " 1) clear console"
    echo " 2) hello world"

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
    of 1:
      clear(); menu()
    of 2:
      echo "Hello World"
    of 3:
      echo op
    else:
      echo "not implemented"
  # read next option
  op = option()
# end while

echo "done"



