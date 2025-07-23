# mobs
execute as @e[type=armor_stand,tag=bone_rider_trigger] at @s run function forgottenruins:mobs/spawn/bone_rider
execute as @e[type=armor_stand,tag=spider_jockey_trigger] at @s run function forgottenruins:mobs/spawn/spider_jockey

# sentinel_golems
execute as @e[tag=sentinel_golem,tag=sleep] at @s run function forgottenruins:sentinel_golems/tick_handler
