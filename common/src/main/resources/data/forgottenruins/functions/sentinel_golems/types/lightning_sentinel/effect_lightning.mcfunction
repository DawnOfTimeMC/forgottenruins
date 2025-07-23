stopsound @a[distance=..20] ambient
stopsound @a[distance=..20] block
stopsound @a[distance=..20] hostile

# Éclair au centre du golem
summon lightning_bolt ~ ~1 ~
playsound minecraft:entity.lightning_bolt.impact ambient @a[distance=..16] ~ ~ ~
