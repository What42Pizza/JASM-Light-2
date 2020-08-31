scoreboard players operation Global percent = Global x
scoreboard players operation Global percent -= Global xmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global del_scratch2 = Global xmax
scoreboard players operation Global del_scratch2 -= Global xmin
scoreboard players operation Global percent /= Global del_scratch2
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global z = Global zmin
scoreboard players operation Global del_scratch2 = Global zmax
scoreboard players set Global del_scratch3 1000
execute if score Global del_scratch3 matches ..-1 if score Global z >= Global del_scratch2 run function blingedit:for124_ln983
execute if score Global del_scratch3 matches 1.. if score Global z <= Global del_scratch2 run function blingedit:for124_ln983
scoreboard players operation Global x += Global del_scratch1
execute if score Global del_scratch1 matches ..-1 if score Global x >= Global del_scratch0 run function blingedit:for123_ln980
execute if score Global del_scratch1 matches 1.. if score Global x <= Global del_scratch0 run function blingedit:for123_ln980