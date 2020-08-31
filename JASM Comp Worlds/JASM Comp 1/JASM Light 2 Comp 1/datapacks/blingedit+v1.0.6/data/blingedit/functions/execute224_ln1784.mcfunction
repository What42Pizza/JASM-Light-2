scoreboard players set @s absorption 100
execute store result entity @s AbsorptionAmount float 1.0 run scoreboard players get @s absorption
scoreboard players set Global col_scratch0 0
execute store result entity @s Motion[0] double 0.001 run scoreboard players get Global col_scratch0
execute store result entity @s Motion[1] double 0.001 run scoreboard players get Global col_scratch0
execute store result entity @s Motion[2] double 0.001 run scoreboard players get Global col_scratch0
effect give @s invisibility 1000000 0 true
effect give @s water_breathing 1000000 4 true
effect give @s minecraft:fire_resistance 1000000 4 true
scoreboard players set @s fire_timer 0
execute store result entity @s Fire short 1.0 run scoreboard players get @s fire_timer
execute as @s at @s run tp @s ~ ~ ~