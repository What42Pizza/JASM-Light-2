scoreboard players operation Global x = Global xmin
scoreboard players operation Global fil_scratch0 = Global xmax
scoreboard players set Global fil_scratch1 1000
execute if score Global fil_scratch1 matches ..-1 if score Global x >= Global fil_scratch0 run function blingedit:for061_ln580
execute if score Global fil_scratch1 matches 1.. if score Global x <= Global fil_scratch0 run function blingedit:for061_ln580
kill @s