scoreboard players operation Global _id = @s pick1
execute as @e if score @s _id = Global _id run function blingedit:execute213_ln1719
scoreboard players set @s state 4
scoreboard players set @s tell_actions 1
scoreboard players add @e _age 1
summon minecraft:magma_cube ~ ~ ~ {CustomName:"\"Corner\"", Tags:["Corner"], Glowing:1b, NoGravity:1b, NoAI:1b, Invulnerable:1b, Size:1b, Silent:1b, AbsorptionAmount:100f}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:magma_cube,tag=Corner,scores={_age=1}] _id = Global _unique
scoreboard players operation Global mai_scratch1 = Global _unique
scoreboard players operation @s pick2 = Global mai_scratch1
scoreboard players operation Global _id = @s pick2
execute as @e if score @s _id = Global _id run function blingedit:execute214_ln1727
scoreboard players operation Global mai_scratch1 = @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] pick2
scoreboard players operation @s moving = Global mai_scratch1
scoreboard players set Global ex -1
scoreboard players set Global mai_scratch1 1
execute if score Global ex <= Global mai_scratch1 run function blingedit:for215_ln1737
execute as @e[type=minecraft:magma_cube,tag=Corner] at @s run tp @s ~ ~ ~