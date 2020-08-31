scoreboard players add @e _age 1
summon minecraft:magma_cube ~ ~ ~ {CustomName:"\"Corner\"", Tags:["Corner"], Glowing:1b, NoGravity:1b, NoAI:1b, Invulnerable:1b, Size:1b, Silent:1b, AbsorptionAmount:100f}
scoreboard players add @e _age 1
scoreboard players add Global _unique 1
scoreboard players operation @e[type=minecraft:magma_cube,tag=Corner,scores={_age=1}] _id = Global _unique
scoreboard players operation Global mai_scratch1 = Global _unique
scoreboard players operation @s pick1 = Global mai_scratch1
scoreboard players operation Global _id = @s pick1
execute as @e if score @s _id = Global _id run function blingedit:execute159_ln1449