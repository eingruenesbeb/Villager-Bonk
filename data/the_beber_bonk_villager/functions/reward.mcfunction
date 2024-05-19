# as: @s; at: @s; Additional context: reward function of "the_beber_bonk_villager:on_hit"
# Gets run, when a player hits a villager with the bonk stick. Calls functions to find the hit villager and additional logic.
tag @s add VB_to_forgive
execute if entity @s[advancements={the_beber_bonk_villager:on_hit={target=true}}] run function the_beber_bonk_villager:find_entity

advancement revoke @s only the_beber_bonk_villager:on_hit
