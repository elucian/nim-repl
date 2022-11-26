echo "Nim REPL demo!"

# display the main menu
proc menu: string {.discardable.} =
    echo "--------------"
    echo " 0) exit"
    echo " 1) clear console"
    echo " 2) hello world"
    echo " 3) no op"
    echo " 4) integer demo"