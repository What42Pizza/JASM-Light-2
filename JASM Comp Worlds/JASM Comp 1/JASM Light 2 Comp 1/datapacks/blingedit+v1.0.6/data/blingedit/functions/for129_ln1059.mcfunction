scoreboard players operation Global percent = Global x
scoreboard players operation Global percent -= Global xmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global per3_scratch2 = Global xmax
scoreboard players operation Global per3_scratch2 -= Global xmin
scoreboard players operation Global percent /= Global per3_scratch2
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global z = Global zmin
scoreboard players operation Global per3_scratch2 = Global zmax
scoreboard players set Global per3_scratch3 1000
execute if score Global per3_scratch3 matches ..-1 if score Global z >= Global per3_scratch2 run function blingedit:for130_ln1062
execute if score Global per3_scratch3 matches 1.. if score Global z <= Global per3_scratch2 run function blingedit:for130_ln1062
scoreboard players operation Global x += Global per3_scratch1
execute if score Global per3_scratch1 matches ..-1 if score Global x >= Global per3_scratch0 run function blingedit:for129_ln1059
execute if score Global per3_scratch1 matches 1.. if score Global x <= Global per3_scratch0 run function blingedit:for129_ln1059