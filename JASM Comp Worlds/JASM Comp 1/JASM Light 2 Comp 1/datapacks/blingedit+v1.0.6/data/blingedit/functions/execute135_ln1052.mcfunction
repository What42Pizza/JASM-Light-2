tellraw @s ["",{"text":"Replacing "},{"score":{"name":"Global","objective":"box_xmin"}},{"text":", "},{"score":{"name":"Global","objective":"box_ymin"}},{"text":", "},{"score":{"name":"Global","objective":"box_zmin"}},{"text":" to "},{"score":{"name":"Global","objective":"box_xmax"}},{"text":", "},{"score":{"name":"Global","objective":"box_ymax"}},{"text":", "},{"score":{"name":"Global","objective":"box_zmax"}}]
bossbar set progress players @s
function blingedit:store_tile_drops
scoreboard players set Global count 0
scoreboard players add @e _age 1
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
scoreboard players add @e _age 1
execute as @e[scores={_age=1}] run function blingedit:execute134_ln1058
function blingedit:restore_tile_drops
tellraw @s ["",{"text":"Replaced "},{"score":{"name":"Global","objective":"count"}},{"text":" blocks."}]
scoreboard players set @s state 3