setblock 0 1 0 stone
execute store success score Global loaded run setblock 0 1 0 sandstone
execute unless score Global loaded matches 1.. run tellraw @s ["",{"text":"Chunk 0,0 wasn't loaded. Try again (or use "},{"text":"/forceload add 0 0","clickEvent":{"action":"suggest_command","value":"/forceload add 0 0"},"color":"aqua","underlined":true},{"text":")","color":"white"}]