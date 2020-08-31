execute store result entity @s Pos[0] double 0.001 run scoreboard players get Global x
execute store result entity @s Pos[1] double 0.001 run scoreboard players get Global y
execute store result entity @s Pos[2] double 0.001 run scoreboard players get Global z
execute at @s run function blingedit:execute133_ln1065
scoreboard players operation Global y += Global per3_scratch5
execute if score Global per3_scratch5 matches ..-1 if score Global y >= Global per3_scratch4 run function blingedit:for131_ln1063
execute if score Global per3_scratch5 matches 1.. if score Global y <= Global per3_scratch4 run function blingedit:for131_ln1063