scoreboard players set Global found_player 0
execute at @s as @e[type=minecraft:player,sort=nearest,limit=1,distance=..5] if score @s edit matches 1.. run function blingedit:execute152_ln1373
kill @s