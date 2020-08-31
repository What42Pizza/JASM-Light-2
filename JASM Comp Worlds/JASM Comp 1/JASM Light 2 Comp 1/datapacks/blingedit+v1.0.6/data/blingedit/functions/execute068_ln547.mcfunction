scoreboard players set Global replaced_blocks 0
scoreboard players operation Global rx1 = @s _rand_min_0
scoreboard players operation Global ry1 = @s _rand_min_1
scoreboard players operation Global rz1 = @s _rand_min_2
scoreboard players operation Global rx2 = @s _rand_max_0
scoreboard players operation Global ry2 = @s _rand_max_1
scoreboard players operation Global rz2 = @s _rand_max_2
execute at @s run function blingedit:execute060_ln552
scoreboard players operation Global _rand_min_0 = @s _rand_min_0
scoreboard players operation Global _rand_min_1 = @s _rand_min_1
scoreboard players operation Global _rand_min_2 = @s _rand_min_2
scoreboard players operation Global random_replace = @s random_replace
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute067_ln579
function blingedit:restore_tile_drops
kill @e[type=minecraft:area_effect_cloud,scores={rand_x=1..}]
kill @e[type=minecraft:area_effect_cloud,scores={rand_y=1..}]
kill @e[type=minecraft:area_effect_cloud,scores={rand_z=1..}]