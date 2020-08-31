scoreboard players operation Global y = Global ymax
scoreboard players operation Global del_scratch4 = Global ymin
scoreboard players set Global del_scratch5 1000
scoreboard players operation Global del_scratch5 *= minus Constant
execute if score Global del_scratch5 matches ..-1 if score Global y >= Global del_scratch4 run function blingedit:for125_ln984
execute if score Global del_scratch5 matches 1.. if score Global y <= Global del_scratch4 run function blingedit:for125_ln984
scoreboard players operation Global z += Global del_scratch3
execute if score Global del_scratch3 matches ..-1 if score Global z >= Global del_scratch2 run function blingedit:for124_ln983
execute if score Global del_scratch3 matches 1.. if score Global z <= Global del_scratch2 run function blingedit:for124_ln983