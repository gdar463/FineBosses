# Reset trigger 
execute as @a[predicate=bosses:in_dim,scores={piglisanSpawn=1..}] run scoreboard players set @s piglisanSpawn 0

# Spawning Boss and AS
execute in bosses:dimension align xyz positioned 37 -53 42 unless entity @e[tag=pigmanBoss] run summon minecraft:zombified_piglin ~ ~ ~ {NoAI:1b,Attributes:[{Name: "minecraft:generic.max_health", Base: 350.0d}],DeathLootTable:"bosses:piglisan",Tags:["pigmanBoss","boss"],CustomName:'{"text":"Piglisan","color":"yellow","bold":true}',CanPickUpLoot:0b,CustomNameVisible:1b,AngerTime:2147483646,Health:350.0f,HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:20s}],Unbrekable:1b}}],HandDropChances:[0.0f,0.0f]}
execute as @e[tag=pigmanBoss] anchored eyes positioned as @e[tag=pigmanBoss] run summon minecraft:armor_stand ~ ~0.1 ~0.9 {Invulnerable:1b,Invisible:1b,Small:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Pig"}}],Tags:["asPigmanBossR"],NoGravity:1b,HasVisualFire:0b}
execute positioned as @e[tag=pigmanBoss] unless entity @e[tag=asPigmanBossC] anchored eyes run summon minecraft:armor_stand ~ ~ ~ {Tags:["asPigmanBossC"],NoGravity:1b,Small:1b,Invisible:1b,HasVisualFire:0b,Invulnerable:1b}

# Bossbar
bossbar set bosses:piglisan visible true
bossbar set bosses:piglisan players @a[predicate=bosses:in_dim]
