execute as @s run function blingedit:get_cursor_position
scoreboard players set Global corner_exists 0
scoreboard players operation Global _id = @s pick1
execute as @e if score @s _id = Global _id run function blingedit:execute169_ln1505
execute if score Global corner_exists matches ..0 run function blingedit:execute170_ln1512