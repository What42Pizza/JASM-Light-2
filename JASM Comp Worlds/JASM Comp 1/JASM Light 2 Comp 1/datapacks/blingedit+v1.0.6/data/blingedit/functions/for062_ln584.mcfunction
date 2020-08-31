scoreboard players operation Global y = Global ymin
scoreboard players operation Global fil_scratch4 = Global ymax
scoreboard players set Global fil_scratch5 1000
execute if score Global fil_scratch5 matches ..-1 if score Global y >= Global fil_scratch4 run function blingedit:for063_ln585
execute if score Global fil_scratch5 matches 1.. if score Global y <= Global fil_scratch4 run function blingedit:for063_ln585
scoreboard players operation Global z += Global fil_scratch3
execute if score Global fil_scratch3 matches ..-1 if score Global z >= Global fil_scratch2 run function blingedit:for062_ln584
execute if score Global fil_scratch3 matches 1.. if score Global z <= Global fil_scratch2 run function blingedit:for062_ln584