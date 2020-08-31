scoreboard players set @s random_replace 1
scoreboard players set @s state 3
execute as @s run function blingedit:fill_random
scoreboard players set @s random_replace 0
tellraw @s ["",{"text":"Replaced "},{"score":{"name":"Global","objective":"replaced_blocks"}},{"text":" blocks."}]