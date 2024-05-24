# as: @s; at: @s; Additional context: reward function of "eingruenesbeb.bonk_villager:on_hit"
# Gets run, when a player hits a villager with the bonk stick. Calls functions to find the hit villager and additional logic.
tag @s add eingruenesbeb.vb.to_forgive
execute if entity @s[advancements={eingruenesbeb.bonk_villager:on_hit={target=true}}] run function eingruenesbeb.bonk_villager:hit_detection/_find_entity

advancement revoke @s only eingruenesbeb.bonk_villager:on_hit
tag @s remove eingruenesbeb.vb.to_forgive
