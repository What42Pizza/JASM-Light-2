execute as @s run function blingedit:get_cursor_position
scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result entity @e[limit=1,scores={_age=1}] Pos[0] double 0.001 run scoreboard players get Global _cursor_0
execute store result entity @e[limit=1,scores={_age=1}] Pos[1] double 0.001 run scoreboard players get Global _cursor_1
execute store result entity @e[limit=1,scores={_age=1}] Pos[2] double 0.001 run scoreboard players get Global _cursor_2
execute at @e[scores={_age=1}] run function blingedit:execute183_ln1557
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id run function blingedit:execute190_ln1583
execute as @s run function blingedit:get_minmax
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id run function blingedit:execute194_ln1594