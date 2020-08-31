scoreboard players operation Global percent = Global x
scoreboard players operation Global percent -= Global xmin
scoreboard players operation Global percent *= c100 Constant
scoreboard players operation Global fil_scratch2 = Global xmax
scoreboard players operation Global fil_scratch2 -= Global xmin
scoreboard players operation Global percent /= Global fil_scratch2
execute store result bossbar progress value run scoreboard players get Global percent
scoreboard players operation Global z = Global zmin
scoreboard players operation Global fil_scratch2 = Global zmax
scoreboard players set Global fil_scratch3 1000
execute if score Global fil_scratch3 matches ..-1 if score Global z >= Global fil_scratch2 run function blingedit:for062_ln584
execute if score Global fil_scratch3 matches 1.. if score Global z <= Global fil_scratch2 run function blingedit:for062_ln584
scoreboard players operation Global x += Global fil_scratch1
execute if score Global fil_scratch1 matches ..-1 if score Global x >= Global fil_scratch0 run function blingedit:for061_ln580
execute if score Global fil_scratch1 matches 1.. if score Global x <= Global fil_scratch0 run function blingedit:for061_ln580