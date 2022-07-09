# Boss Things
execute at @e[tag=pigmanBoss] if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute as @e[tag=pigmanBoss] positioned as @e[tag=pigmanBoss] unless entity @e[tag=asPigmanBoss,distance=1..1.75] run summon minecraft:armor_stand ~ ~-1 ~ {Invulnerable:1b,Tags:["asPigmanBoss"],Invisible:1b,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}],Small:1b,HasVisualFire:0b}
execute as @e[tag=asPigmanBossC] at @e[tag=pigmanBoss] run tp @s ~ ~ ~
execute as @e[tag=asPigmanBossC] at @e[tag=asPigmanBossC] run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=asPigmanBossR] rotated as @e[tag=asPigmanBossC] at @e[tag=asPigmanBossC] run tp ^0.9 ^ ^
execute as @e[type=zombified_piglin,tag=pigmanBoss] run data modify entity @s AngryAt set from entity @p UUID
execute store result bossbar bosses:piglisan value run data get entity @e[tag=pigmanBoss,limit=1] Health
