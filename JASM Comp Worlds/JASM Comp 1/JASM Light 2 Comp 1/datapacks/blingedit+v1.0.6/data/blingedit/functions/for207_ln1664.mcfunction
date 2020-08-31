execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global z
execute at @s run clone 0 1 0 0 1 0 ~ ~ ~
scoreboard players operation Global y += Global mai_scratch6
execute if score Global mai_scratch6 matches ..-1 if score Global y >= Global mai_scratch5 run function blingedit:for207_ln1664
execute if score Global mai_scratch6 matches 1.. if score Global y <= Global mai_scratch5 run function blingedit:for207_ln1664