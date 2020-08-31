execute store result score Global _dpos_0 run data get entity @s Pos[0] 1000
execute store result score Global _dpos_1 run data get entity @s Pos[1] 1000
execute store result score Global _dpos_2 run data get entity @s Pos[2] 1000
scoreboard players operation Global _dpos_0 -= Global _center_0
scoreboard players operation Global _dpos_1 -= Global _center_1
scoreboard players operation Global _dpos_2 -= Global _center_2
scoreboard players set Global bottom_center 0
execute store result score @s y run data get entity @s Pos[1] 1000
execute if score @s center_x matches 1.. if score @s center_z matches 1.. if score @s y = Global ymin run scoreboard players set Global bottom_center 1
scoreboard players add @e _age 1
summon minecraft:magma_cube ~ ~ ~ {CustomName:"\"Corner\"", Tags:["Corner"], Glowing:1b, NoGravity:1b, NoAI:1b, Invulnerable:1b, Size:1b, Silent:1b, AbsorptionAmount:100f}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute074_ln679