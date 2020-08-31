team join source
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] state 3
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] moving 0
execute if score @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] tell_actions matches 1.. run function blingedit:execute180_ln1573