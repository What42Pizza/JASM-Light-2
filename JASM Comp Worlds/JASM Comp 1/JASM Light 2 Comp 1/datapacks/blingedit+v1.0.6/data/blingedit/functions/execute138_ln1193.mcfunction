scoreboard players set @s highlight 0
execute store result score Global _delta_0 run data get entity @s Pos[0] 1000
execute store result score Global _delta_1 run data get entity @s Pos[1] 1000
execute store result score Global _delta_2 run data get entity @s Pos[2] 1000
scoreboard players set Global cor_scratch0 0
scoreboard players set Global cor_scratch1 500
scoreboard players set Global cor_scratch2 0
scoreboard players operation Global _delta_0 += Global cor_scratch0
scoreboard players operation Global _delta_1 += Global cor_scratch1
scoreboard players operation Global _delta_2 += Global cor_scratch2
scoreboard players operation Global _delta_0 -= Global _start_pos_0
scoreboard players operation Global _delta_1 -= Global _start_pos_1
scoreboard players operation Global _delta_2 -= Global _start_pos_2
scoreboard players operation Global cor_scratch0 = Global _delta_0
scoreboard players operation Global cor_scratch0 *= Global _look_0
scoreboard players operation Global cor_scratch1 = Global _delta_1
scoreboard players operation Global cor_scratch1 *= Global _look_1
scoreboard players operation Global cor_scratch2 = Global _delta_2
scoreboard players operation Global cor_scratch2 *= Global _look_2
scoreboard players operation Global cor_scratch0 += Global cor_scratch1
scoreboard players operation Global cor_scratch0 += Global cor_scratch2
scoreboard players operation Global tca = Global cor_scratch0
scoreboard players operation Global tca /= c1000 Constant
scoreboard players operation Global cor_scratch0 = Global _delta_0
scoreboard players operation Global cor_scratch0 *= Global _delta_0
scoreboard players operation Global cor_scratch3 = Global _delta_1
scoreboard players operation Global cor_scratch3 *= Global _delta_1
scoreboard players operation Global cor_scratch4 = Global _delta_2
scoreboard players operation Global cor_scratch4 *= Global _delta_2
scoreboard players operation Global cor_scratch0 += Global cor_scratch3
scoreboard players operation Global cor_scratch0 += Global cor_scratch4
scoreboard players operation Global delta2 = Global cor_scratch0
scoreboard players operation Global delta2 /= c1000 Constant
scoreboard players operation Global tca2 = Global tca
scoreboard players operation Global tca2 *= Global tca
scoreboard players operation Global tca2 /= c1000 Constant
scoreboard players operation Global d2 = Global delta2
scoreboard players operation Global d2 -= Global tca2
execute if score Global d2 matches ..1699 if score Global tca matches 1.. run scoreboard players set @s looking 1