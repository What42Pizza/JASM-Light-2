scoreboard players operation Global x = Global xmin
scoreboard players operation Global del_scratch0 = Global xmax
scoreboard players set Global del_scratch1 1000
execute if score Global del_scratch1 matches ..-1 if score Global x >= Global del_scratch0 run function blingedit:for123_ln980
execute if score Global del_scratch1 matches 1.. if score Global x <= Global del_scratch0 run function blingedit:for123_ln980
kill @s