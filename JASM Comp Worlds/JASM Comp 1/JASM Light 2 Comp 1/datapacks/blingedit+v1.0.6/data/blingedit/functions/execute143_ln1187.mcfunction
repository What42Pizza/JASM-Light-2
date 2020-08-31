scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result score Global _start_pos_0 run data get entity @e[limit=1,scores={_age=1}] Pos[0] 1000
execute store result score Global _start_pos_1 run data get entity @e[limit=1,scores={_age=1}] Pos[1] 1000
execute store result score Global _start_pos_2 run data get entity @e[limit=1,scores={_age=1}] Pos[2] 1000
kill @e[scores={_age=1}]
execute positioned ^ ^ ^1 run function blingedit:execute137_ln1189
scoreboard players set @e[type=minecraft:magma_cube,tag=Corner] looking 0
execute as @e[type=minecraft:magma_cube,tag=Corner,distance=..30] if score @s player = Global player if score @s type = Global type run function blingedit:execute138_ln1193
execute as @e[type=minecraft:magma_cube,tag=Corner,sort=nearest,limit=1,scores={looking=1..}] run scoreboard players set @s highlight 1
execute as @e[type=minecraft:magma_cube,tag=Corner,distance=..30] if score @s player = Global player if score @s type = Global type run function blingedit:execute142_ln1207