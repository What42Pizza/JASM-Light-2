scoreboard players set Global i 0
scoreboard players operation Global fil_scratch0 = Global rx2
scoreboard players operation Global fil_scratch0 -= Global rx1
execute if score Global i <= Global fil_scratch0 run function blingedit:for054_ln553
scoreboard players set Global i 0
scoreboard players operation Global fil_scratch0 = Global ry2
scoreboard players operation Global fil_scratch0 -= Global ry1
execute if score Global i <= Global fil_scratch0 run function blingedit:for056_ln560
scoreboard players set Global i 0
scoreboard players operation Global fil_scratch0 = Global rz2
scoreboard players operation Global fil_scratch0 -= Global rz1
execute if score Global i <= Global fil_scratch0 run function blingedit:for058_ln567