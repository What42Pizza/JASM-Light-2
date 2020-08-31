scoreboard players operation Global y = Global ymin
scoreboard players operation Global mai_scratch5 = Global ymax
scoreboard players set Global mai_scratch6 1000
execute if score Global mai_scratch6 matches ..-1 if score Global y >= Global mai_scratch5 run function blingedit:for207_ln1664
execute if score Global mai_scratch6 matches 1.. if score Global y <= Global mai_scratch5 run function blingedit:for207_ln1664
scoreboard players operation Global z += Global mai_scratch4
execute if score Global mai_scratch4 matches ..-1 if score Global z >= Global mai_scratch3 run function blingedit:for206_ln1663
execute if score Global mai_scratch4 matches 1.. if score Global z <= Global mai_scratch3 run function blingedit:for206_ln1663