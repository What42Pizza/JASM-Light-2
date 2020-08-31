execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global z
execute at @s run setblock ~ ~ ~ air
scoreboard players operation Global y += Global del_scratch5
execute if score Global del_scratch5 matches ..-1 if score Global y >= Global del_scratch4 run function blingedit:for125_ln984
execute if score Global del_scratch5 matches 1.. if score Global y <= Global del_scratch4 run function blingedit:for125_ln984