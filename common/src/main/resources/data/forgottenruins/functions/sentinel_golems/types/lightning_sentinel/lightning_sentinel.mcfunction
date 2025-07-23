# 1. Invoque l'Armor Stand invisible
summon armor_stand ~ ~ ~ {Tags:["random_picker"],Invisible:1b,Marker:1b,NoGravity:1b}

# 2. Spread aléatoirement sur une ligne
spreadplayers ~ ~ 0 3 false @e[tag=random_picker,limit=1]

# 3. Fixe Z à 0 (projection sur ligne)
execute as @e[tag=random_picker,limit=1,sort=nearest] at @s run teleport @s ~ ~ 0

# 4. Stocke la coordonnée X dans effect_roll
execute store result score @s effect_roll run data get entity @e[tag=random_picker,limit=1,sort=nearest] Pos[0]

# 5. Découpe en 3 bandes : gauche / centre / droite
execute if score @s effect_roll matches ..-1 run function forgottenruins:sentinel_golems/types/lightning_sentinel/effect_explosion

execute if score @s effect_roll matches 0 run function forgottenruins:sentinel_golems/types/lightning_sentinel/effect_lightning

execute if score @s effect_roll matches 1.. run function forgottenruins:sentinel_golems/types/lightning_sentinel/effect_nothing

# 6. Sécurité : fallback si aucun AS trouvé
# execute unless entity @e[tag=random_picker,distance=..20] run function forgottenruins:sentinel_golems/types/lightning_sentinel/effect_lightning 

# 7. Nettoyage
kill @e[tag=random_picker]

# Summon les golems en lien avec l'effet choisi
execute at @s positioned ~1 ~ ~ run function forgottenruins:golems/young_golem
execute at @s positioned ~-1 ~ ~ run function forgottenruins:golems/young_golem


