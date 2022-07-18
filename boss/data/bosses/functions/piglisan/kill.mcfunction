# Removing fire
execute at @e[tag=asPigmanBoss] run fill ~-2 ~1 ~-2 ~2 ~1 ~2 air replace fire

# Killing Boss and AS
kill @e[tag=pigmanBoss]
kill @e[tag=asPigmanBoss]
kill @e[tag=asPigmanBossR]
kill @e[tag=asPigmanBossC]

# Resetting things
scoreboard players reset @e[scores={PigmanKilled=1..}] PigmanKilled
bossbar set bosses:piglisan visible false
