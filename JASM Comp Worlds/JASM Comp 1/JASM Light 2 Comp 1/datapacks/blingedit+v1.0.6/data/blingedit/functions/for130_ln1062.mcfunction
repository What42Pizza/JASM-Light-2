scoreboard players operation Global y = Global ymin
scoreboard players operation Global per3_scratch4 = Global ymax
scoreboard players set Global per3_scratch5 1000
execute if score Global per3_scratch5 matches ..-1 if score Global y >= Global per3_scratch4 run function blingedit:for131_ln1063
execute if score Global per3_scratch5 matches 1.. if score Global y <= Global per3_scratch4 run function blingedit:for131_ln1063
scoreboard players operation Global z += Global per3_scratch3
execute if score Global per3_scratch3 matches ..-1 if score Global z >= Global per3_scratch2 run function blingedit:for130_ln1062
execute if score Global per3_scratch3 matches 1.. if score Global z <= Global per3_scratch2 run function blingedit:for130_ln1062