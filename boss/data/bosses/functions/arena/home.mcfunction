# Teleporting & Killng the AS
execute in bosses:dimension unless entity @e[tag=boss] run tellraw @a [{"selector":"@a[predicate=bosses:in_dim]","separator":",","color":"light_purple"},{"text":" returned home","color":"gray","bold":false,"italic":false}]
execute as @a[predicate=bosses:in_dim] run gamemode survival @s
execute at @e[tag=asArenaTel] as @a[nbt={Dimension:"bosses:dimension"}] if score datapack debug matches 1.. run tp @s ~ ~1 ~-1
execute at @e[tag=asArenaTel] run data remove block ~ ~ ~ Items
execute at @e[tag=asArenaTel] as @a[nbt={Dimension:"bosses:dimension"}] unless score datapack debug matches 1.. run tp @s ~ ~1 ~
execute unless score datapack debug matches 1.. in minecraft:overworld run kill @e[tag=asArenaTel]
execute unless entity @a[predicate=bosses:in_dim] run scoreboard players set datapack inArena 0
execute if entity @e[tag=pigmanBoss,type=minecraft:zombified_piglin] run function bosses:piglisan/kill
execute unless entity @e[tag=pigmanBoss] if score datapack bossType matches 2 run function bosses:piglisan/thanksgiving

