scoreboard players set Global mai_scratch1 1
scoreboard players operation Global Param0 = Global mai_scratch1
execute as @s run function blingedit:corner_target
execute if score Global click matches 1.. run function blingedit:execute178_ln1544