scoreboard players operation Global x = Global xmin
scoreboard players operation Global per3_scratch0 = Global xmax
scoreboard players set Global per3_scratch1 1000
execute if score Global per3_scratch1 matches ..-1 if score Global x >= Global per3_scratch0 run function blingedit:for129_ln1059
execute if score Global per3_scratch1 matches 1.. if score Global x <= Global per3_scratch0 run function blingedit:for129_ln1059
kill @s