scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute055_ln554
scoreboard players add Global i 1
execute if score Global i <= Global fil_scratch0 run function blingedit:for054_ln553