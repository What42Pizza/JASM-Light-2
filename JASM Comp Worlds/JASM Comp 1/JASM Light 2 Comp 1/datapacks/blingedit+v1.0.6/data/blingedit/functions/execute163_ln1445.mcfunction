scoreboard players set @s state 1
execute at @s positioned ~ ~200 ~ run function blingedit:execute160_ln1447
execute at @s positioned ~ ~200 ~ run function blingedit:execute161_ln1458
scoreboard players operation Global _id = @s pick1
execute as @e if score @s _id = Global _id run function blingedit:execute162_ln1464