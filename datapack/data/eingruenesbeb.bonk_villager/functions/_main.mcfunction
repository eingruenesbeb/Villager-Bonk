# Write here, what your pack should do in each tick:
scoreboard players enable @a villagerBonk
execute as @a[scores={villagerBonk=1..}] run function eingruenesbeb.bonk_villager:_run_trigger
execute if score #loaded eingruenesbeb.vb.entityid matches 1 run function eingruenesbeb.bonk_villager:hit_detection/_check_for_id_assignment
execute if predicate eingruenesbeb.bonk_villager:restock_time run function eingruenesbeb.bonk_villager:_bonked_restock
execute if predicate eingruenesbeb.bonk_villager:new_day run execute as @e[tag=eingruenesbeb.vb.bonked_state] run data modify entity @s RestocksToday set value 0
