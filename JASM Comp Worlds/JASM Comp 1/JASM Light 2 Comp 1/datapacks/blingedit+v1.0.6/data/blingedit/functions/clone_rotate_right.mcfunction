scoreboard players add @s clone_rotation 90
execute if score @s clone_rotation matches 360.. run scoreboard players remove @s clone_rotation 360
scoreboard players operation Global _id = @s to_display
execute as @e if score @s _id = Global _id run function blingedit:execute048_ln445
execute as @s run function blingedit:rotate_dest_horizontal
gamerule sendCommandFeedback false