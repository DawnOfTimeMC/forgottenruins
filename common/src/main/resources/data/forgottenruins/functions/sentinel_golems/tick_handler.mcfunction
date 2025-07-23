# Boucle particules
function forgottenruins:sentinel_golems/idle_particles

# Tick cooldown (décrémentation et suppression du tag)
execute as @e[tag=sentinel_golem,tag=cooldown] run scoreboard players remove @s cooldown_timer 1
execute as @e[tag=sentinel_golem,tag=cooldown] if score @s cooldown_timer matches ..0 run tag @s remove cooldown

# Détection du joueur autour des sentinelles endormies, uniquement si cooldown terminé
execute as @e[tag=sentinel_golem,tag=sleep] at @s unless entity @s[tag=cooldown] if entity @p[distance=..3] run function forgottenruins:sentinel_golems/activate
