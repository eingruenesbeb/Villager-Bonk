# Write here, what your pack should do in each tick:
scoreboard players enable @a villagerBonk
execute as @a[scores={villagerBonk=1..}] run function the_beber_bonk_villager:_run_trigger

execute as @e[tag=the_beber_BV_bonked_state] if predicate the_beber_bonk_villager:restocks_remain if predicate the_beber_bonk_villager:restock_time run function the_beber_bonk_villager:_bonked_restock
execute if predicate the_beber_bonk_villager:new_day run execute as @e[tag=the_beber_BV_bonked_state] run data modify entity @s RestocksToday set value 0
