# Sending message
execute at @e[tag=asArenaTel] run tellraw @a [{"selector":"@a[predicate=bosses:in_dim]","separator":",","color":"light_purple"},{"text":" entered ","color":"gray","bold":false,"italic":false},{"text":"The Arena","color":"yellow","bold":true,"italic":false}]

# Removing Items
execute unless entity @a[predicate=bosses:in_dim] at @e[type=minecraft:armor_stand,tag=asArenaTel] in minecraft:overworld if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:firework_star",tag:{Heart:1b},Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}],CustomName:'{"bold":true,"italic":false,"color":"gold","text":"Arena Teleporter"}'} unless score datapack debug matches 1.. run data remove block ~ ~ ~ Items


# Enabling triggers
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run scoreboard players set @a[predicate=bosses:in_dim] arenaCancel 0
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run scoreboard players enable @a[predicate=bosses:in_dim] arenaCancel
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run scoreboard players set @a[predicate=bosses:in_dim] piglisanSpawn 0
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run scoreboard players enable @a[predicate=bosses:in_dim] piglisanSpawn
