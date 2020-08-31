kill @e[scores={_age=1}]
scoreboard players operation Global _id = @s moving
execute as @e if score @s _id = Global _id run function blingedit:execute199_ln1622
scoreboard players add @e _age 1
summon area_effect_cloud
scoreboard players add @e _age 1
execute store result score Global _movement_0 run data get entity @e[limit=1,scores={_age=1}] Pos[0] 1000
execute store result score Global _movement_1 run data get entity @e[limit=1,scores={_age=1}] Pos[1] 1000
execute store result score Global _movement_2 run data get entity @e[limit=1,scores={_age=1}] Pos[2] 1000
kill @e[scores={_age=1}]
scoreboard players operation Global _movement_0 -= Global _moving_pos_0
scoreboard players operation Global _movement_1 -= Global _moving_pos_1
scoreboard players operation Global _movement_2 -= Global _moving_pos_2
scoreboard players operation Global mai_scratch1 = Global _movement_0
scoreboard players operation Global mai_scratch2 = Global _movement_1
scoreboard players operation Global mai_scratch3 = Global _movement_2
scoreboard players set Global mai_scratch4 1000
scoreboard players operation Global mai_scratch1 %= Global mai_scratch4
scoreboard players operation Global mai_scratch2 %= Global mai_scratch4
scoreboard players operation Global mai_scratch3 %= Global mai_scratch4
scoreboard players operation Global _movement_0 -= Global mai_scratch1
scoreboard players operation Global _movement_1 -= Global mai_scratch2
scoreboard players operation Global _movement_2 -= Global mai_scratch3
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] _id if score @s type matches 2..2 run function blingedit:execute200_ln1627