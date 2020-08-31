scoreboard players operation Global percent = Global x
scoreboard players operation Global percent -= Global xmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global mai_scratch3 = Global xmax
scoreboard players operation Global mai_scratch3 -= Global xmin
scoreboard players operation Global percent /= Global mai_scratch3
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global z = Global zmin
scoreboard players operation Global mai_scratch3 = Global zmax
scoreboard players set Global mai_scratch4 1000
execute if score Global mai_scratch4 matches ..-1 if score Global z >= Global mai_scratch3 run function blingedit:for206_ln1663
execute if score Global mai_scratch4 matches 1.. if score Global z <= Global mai_scratch3 run function blingedit:for206_ln1663
scoreboard players operation Global x += Global mai_scratch2
execute if score Global mai_scratch2 matches ..-1 if score Global x >= Global mai_scratch1 run function blingedit:for205_ln1660
execute if score Global mai_scratch2 matches 1.. if score Global x <= Global mai_scratch1 run function blingedit:for205_ln1660