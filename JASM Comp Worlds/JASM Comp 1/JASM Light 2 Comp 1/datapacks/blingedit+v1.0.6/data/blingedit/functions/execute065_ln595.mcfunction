scoreboard players operation Global rx = @e[type=minecraft:area_effect_cloud,sort=random,limit=1,scores={rand_x=1..}] val
scoreboard players operation Global ry = @e[type=minecraft:area_effect_cloud,sort=random,limit=1,scores={rand_y=1..}] val
scoreboard players operation Global rz = @e[type=minecraft:area_effect_cloud,sort=random,limit=1,scores={rand_z=1..}] val
scoreboard players operation Global fil_scratch6 = Global _rand_min_0
scoreboard players operation Global fil_scratch7 = Global _rand_min_1
scoreboard players operation Global fil_scratch8 = Global _rand_min_2
scoreboard players operation Global fil_scratch6 += Global rx
scoreboard players operation Global fil_scratch7 += Global ry
scoreboard players operation Global fil_scratch8 += Global rz
scoreboard players set Global fil_scratch9 1000
scoreboard players operation Global fil_scratch6 *= Global fil_scratch9
scoreboard players operation Global fil_scratch7 *= Global fil_scratch9
scoreboard players operation Global fil_scratch8 *= Global fil_scratch9
execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global fil_scratch6
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global fil_scratch7
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global fil_scratch8
execute at @s run clone ~ ~ ~ ~ ~ ~ 0 1 0
scoreboard players add Global replaced_blocks 1
clone 0 1 0 0 1 0 ~ ~ ~