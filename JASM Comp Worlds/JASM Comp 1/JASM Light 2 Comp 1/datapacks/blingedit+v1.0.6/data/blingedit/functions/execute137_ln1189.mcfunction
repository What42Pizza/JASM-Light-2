scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result score Global _look_0 run data get entity @e[limit=1,scores={_age=1}] Pos[0] 1000
execute store result score Global _look_1 run data get entity @e[limit=1,scores={_age=1}] Pos[1] 1000
execute store result score Global _look_2 run data get entity @e[limit=1,scores={_age=1}] Pos[2] 1000
kill @e[scores={_age=1}]
scoreboard players operation Global _look_0 -= Global _start_pos_0
scoreboard players operation Global _look_1 -= Global _start_pos_1
scoreboard players operation Global _look_2 -= Global _start_pos_2