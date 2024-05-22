# as: [Server]; at: [worldspawn]

# Reactivate the AI of "bonked" villagers:
execute as @e[tag=the_beber_BV_bonked_state] run data modify entity @s NoAI set value 0b

# Lastly disable the datapack:
datapack disable "file/Bonk Villager v1.2-MC1.21.zip"
