# Reset trigger 
execute as @a[predicate=bosses:in_dim,scores={arenaCancel=1..}] run scoreboard players set @s arenaCancel 0

# Sending message
execute in bosses:dimension if entity @e[tag=boss] run tellraw @a [{"selector":"@a[predicate=bosses:in_dim]","separator":",","color":"light_purple"},{"text":" bailed","color":"gray","bold":false,"italic":false}]

# Calling normal home
function bosses:arena/home

# Call thanksgiving
execute if score datapack bossType matches 2 run schedule function bosses:piglisan/thanksgiving 50t
scoreboard players set datapack bossType 0
