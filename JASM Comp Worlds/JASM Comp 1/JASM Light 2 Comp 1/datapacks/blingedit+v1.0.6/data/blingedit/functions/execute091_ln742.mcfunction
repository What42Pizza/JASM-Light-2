scoreboard players operation Global _move_by_0 = Global _dest_min_0
scoreboard players operation Global _move_by_1 = Global _dest_min_1
scoreboard players operation Global _move_by_2 = Global _dest_min_2
scoreboard players operation Global _move_by_0 -= Global _min_0
scoreboard players operation Global _move_by_1 -= Global _min_1
scoreboard players operation Global _move_by_2 -= Global _min_2
execute as @s run function blingedit:cancel
execute as @e[type=minecraft:magma_cube,tag=Corner] if score @s player = Global player if score @s type matches 1..1 run function blingedit:execute090_ln745
scoreboard players set @s state 3
execute as @s run function blingedit:tell_actions