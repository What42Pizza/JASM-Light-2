execute store result score Global x run data get entity @s Pos[0] 1000
execute store result score Global y run data get entity @s Pos[1] 1000
execute store result score Global z run data get entity @s Pos[2] 1000
scoreboard players set Global mai_scratch1 1000
scoreboard players operation Global x /= Global mai_scratch1
scoreboard players operation Global y /= Global mai_scratch1
scoreboard players operation Global z /= Global mai_scratch1
tellraw @e[type=minecraft:player,limit=1,scores={mai_scratch0=1..}] ["",{"text":"1st corner at "},{"score":{"name":"Global","objective":"x"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"Global","objective":"y"},"color":"red"},{"text":", ","color":"red"},{"score":{"name":"Global","objective":"z"},"color":"red"}]