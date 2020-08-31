tp @s @e[type=minecraft:player,limit=1,scores={cursor_current=1..}]
execute as @s at @s run tp @s ~ ~1.6 ~
scoreboard players set Global step 0
execute if score @e[type=minecraft:player,limit=1,scores={cursor_current=1..}] cursor_inside matches 1.. if score Global step matches ..249 at @s if block ~ ~ ~ #blingedit:cursor_continue run function blingedit:while009_ln150
execute unless score @e[type=minecraft:player,limit=1,scores={cursor_current=1..}] cursor_inside matches 1.. if score Global step matches ..249 at @s if block ^ ^ ^0.2 #blingedit:cursor_continue run function blingedit:while010_ln156
execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute store result score Global _cursor_0 run data get entity @s Pos[0] 1000
execute store result score Global _cursor_1 run data get entity @s Pos[1] 1000
execute store result score Global _cursor_2 run data get entity @s Pos[2] 1000
kill @s