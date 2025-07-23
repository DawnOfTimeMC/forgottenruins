tag @s remove sleep

# Awakening particles
particle minecraft:smoke ~ ~1 ~ 0.6 0.8 0.6 0.01 200 force
particle minecraft:campfire_cosy_smoke ~ ~1.5 ~ 0.4 0.6 0.4 0.01 80 force
particle minecraft:dust 1 0 0 1 ~ ~1 ~ 0.3 0.5 0.3 0.01 20 force

# active le golem proche du joueur dans un rayon de 3 blocs
execute as @s[tag=type_lightning] if entity @p[distance=..4] run function forgottenruins:sentinel_golems/types/lightning_sentinel/lightning_sentinel


