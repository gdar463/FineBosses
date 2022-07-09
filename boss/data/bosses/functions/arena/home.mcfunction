# Teleporting & Killng the AS
execute in bosses:dimension if entity @e[tag=boss] run tellraw @a [{"selector":"@a[predicate=bosses:in_dim]","separator":",","color":"light_purple"},{"text":" bailed","color":"gray","bold":false,"italic":false}]
execute at @e[tag=asArenaTel] as @a[nbt={Dimension:"bosses:dimension"}] if score datapack debug matches 1.. run tp @s ~ ~1 ~-1
execute at @e[tag=asArenaTel] run data remove block ~ ~ ~ Items
execute at @e[tag=asArenaTel] as @a[nbt={Dimension:"bosses:dimension"}] unless score datapack debug matches 1.. run tp @s ~ ~1 ~
execute unless score datapack debug matches 1.. in minecraft:overworld run kill @e[tag=asArenaTel]
execute unless entity @a[predicate=bosses:in_dim] run scoreboard players set datapack inArena 0
