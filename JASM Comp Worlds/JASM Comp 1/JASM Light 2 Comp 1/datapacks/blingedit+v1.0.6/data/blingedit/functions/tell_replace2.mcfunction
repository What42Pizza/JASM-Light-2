function blingedit:check_loaded
execute if score Global loaded matches 1.. run function blingedit:execute128_ln1026
execute unless score Global loaded matches 1.. run tellraw @s ["",{"text":"Chunk 0,0 wasn't loaded. Try again (or use "},{"text":"/forceload add 0 0","color":"aqua"},{"text":")","color":"white"}]