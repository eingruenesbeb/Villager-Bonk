# Write here, what your pack should do in each tick:
scoreboard players enable @a villagerBonk
execute as @a[scores={villagerBonk=1..}] run function eingruenesbeb.bonk_villager:_run_trigger

execute as @e[tag=eingruenesbeb.bv.bonked_state] if predicate eingruenesbeb.bonk_villager:restocks_remain if predicate eingruenesbeb.bonk_villager:restock_time run function eingruenesbeb.bonk_villager:_bonked_restock
execute if predicate eingruenesbeb.bonk_villager:new_day run execute as @e[tag=eingruenesbeb.bv.bonked_state] run data modify entity @s RestocksToday set value 0
