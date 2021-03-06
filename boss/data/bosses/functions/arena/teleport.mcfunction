# Spawning Armorstand in the Dropper
execute unless entity @a[predicate=bosses:in_dim] unless entity @e[tag=asArenaTel] at @a in minecraft:overworld if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:firework_star",tag:{Heart:1b},Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}],CustomName:'{"bold":true,"italic":false,"color":"gold","text":"Arena Teleporter"}'} align xyz run summon minecraft:armor_stand ~0.5 ~-1 ~0.5 {Invisible:1b,Small:1b,Tags:["asArenaTel"]}
execute at @a unless entity @e[tag=asArenaTelPerm,distance=..5] in minecraft:overworld if block ~ ~-1 ~ minecraft:dropper[facing=up]{CustomName:'{"bold":true,"italic":false,"color":"gold","text":"Arena Teleporter"}'} align xyz run summon armor_stand ~0.5 ~-1 ~0.5 {Invisible:1b,Small:1b,Tags:["asArenaTelPerm"]}

# Teleporting
execute unless entity @a[predicate=bosses:in_dim] at @a in minecraft:overworld if entity @e[tag=asArenaTel] if block ~ ~-1 ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:firework_star",tag:{Heart:1b},Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}],CustomName:'{"bold":true,"italic":false,"color":"gold","text":"Arena Teleporter"}'} run execute in bosses:dimension run tp @p 37.5 -52 36.5

# Calling function for messages
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run schedule function bosses:arena/messages 1t

# Saving the type of boss
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b},{Slot:1b,id:"minecraft:diamond",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:diamond",Count:1b},{Slot:4b,id:"minecraft:firework_star",tag:{Heart:1b},Count:1b},{Slot:5b,id:"minecraft:diamond",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:diamond",Count:1b},{Slot:8b,id:"minecraft:obsidian",Count:1b}],CustomName:'{"bold":true,"italic":false,"color":"gold","text":"Arena Teleporter"}'} run scoreboard players set datapack bossType 2

# Delaying the messsage 
execute at @e[tag=asArenaTel] if block ~ ~ ~ minecraft:dropper[facing=up]{Items:[{Slot:0b,id:"minecraft:obsidian",Count:1b}]} run schedule function bosses:arena/enter_mess 2t
