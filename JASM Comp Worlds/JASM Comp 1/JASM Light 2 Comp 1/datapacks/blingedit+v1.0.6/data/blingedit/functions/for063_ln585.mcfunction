execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global z
execute at @s run function blingedit:execute066_ln587
scoreboard players operation Global y += Global fil_scratch5
execute if score Global fil_scratch5 matches ..-1 if score Global y >= Global fil_scratch4 run function blingedit:for063_ln585
execute if score Global fil_scratch5 matches 1.. if score Global y <= Global fil_scratch4 run function blingedit:for063_ln585