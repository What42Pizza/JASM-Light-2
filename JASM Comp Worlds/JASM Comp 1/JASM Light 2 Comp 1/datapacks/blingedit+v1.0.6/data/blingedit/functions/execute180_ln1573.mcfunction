scoreboard players operation Global tx = Global x
scoreboard players operation Global ty = Global y
scoreboard players operation Global tz = Global z
scoreboard players set Global mai_scratch1 1000
scoreboard players operation Global tx /= Global mai_scratch1
scoreboard players operation Global ty /= Global mai_scratch1
scoreboard players operation Global tz /= Global mai_scratch1
tellraw @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] ["",{"text":"2nd corner at "},{"score":{"name":"Global","objective":"tx"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"Global","objective":"ty"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"Global","objective":"tz"},"color":"red"}]
execute as @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] run function blingedit:tell_actions
scoreboard players set @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] tell_actions 0