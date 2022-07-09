# Calling Functions
function bosses:arena/teleport

# Crafting Items
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},limit=1,predicate=bosses:in_dim] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:4b}}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 1 25
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},limit=1,predicate=bosses:in_dim] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] if entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:4b}}] run scoreboard players add datapack bossTimer 1
execute at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},predicate=bosses:in_dim] if score datapack bossTimer matches ..5 run tag @e[type=item,distance=..1] add crafting
execute unless entity @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},limit=1] unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:ender_pearl",Count:4b}}] unless entity @e[distance=..1,type=item,nbt={Item:{id:"minecraft:stone_bricks",Count:4b}}] run scoreboard players set datapack bossTimer 0
execute if score datapack bossTimer matches 100 at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:dropper",Count:1b,tag:{display:{Name:'{"text":"Arena Teleporter","bold":true,"color":"gold","italic":false}'}}}}
execute if score datapack bossTimer matches 100 run scoreboard players set datapack bossCrafting 1
execute if score datapack bossCrafting matches 1 at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
execute if score datapack bossCrafting matches 1 at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run playsound minecraft:block.bell.use block @a ~ ~ ~
execute if score datapack bossCrafting matches 1 at @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}}] run kill @e[type=item,distance=..1,tag=crafting]
execute if score datapack bossCrafting matches 1 run scoreboard players set datapack bossCrafting 0

# Blocking the creation of the Arena if already exist
execute in bosses:dimension if block 37 -54 42 minecraft:birch_planks if entity @p run scoreboard players set datapack arenaBlock 1
execute in bosses:dimension if block 37 -54 42 minecraft:air if entity @p run scoreboard players set datapack arenaBlock 0

# Creating Arena
execute if score datapack arenaBlock matches 0 in bosses:dimension if entity @p run summon minecraft:armor_stand 42 -53 50 {Tags:["asArenaC"],Invisible:1b,Small:1b,Invulnerable:1b}
execute if score datapack arenaBlock matches 0 at @e[type=armor_stand,tag=asArenaC] in bosses:dimension if entity @p run place structure bosses:arena
execute in bosses:dimension if entity @p run kill @e[type=armor_stand,tag=asArenaC]

# Locking Teleporter & Deleting the ILLEGAL Item from Inventory
execute if entity @a[predicate=bosses:in_dim] run scoreboard players set datapack inArena 1
execute if score datapack inArena matches 1.. at @e[tag=asArenaTel] unless score datapack debug matches 1.. run data modify block ~ ~ ~ Items set value [{Slot: 0b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 1b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 2b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 3b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 4b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 5b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 6b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 7b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}, {Slot: 8b, id: "minecraft:barrier", tag: {display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}', Lore: ['{"text":"DON\'T PUT ITEMS HERE!","color":"dark_red","bold":true,"italic":false}', '[{"text":"They will get ","color":"gray","bold":false,"italic":false},{"text":"PERMENTLY DELETED!","color":"dark_red","bold":true,"italic":false}]']}}, Count: 1b}]
execute as @a[gamemode=!creative] unless score datapack debug matches 1.. run clear @s minecraft:barrier{display: {Name: '{"text":"There\'s a player in the arena!","color":"red","bold":true,"italic":false}'}}
