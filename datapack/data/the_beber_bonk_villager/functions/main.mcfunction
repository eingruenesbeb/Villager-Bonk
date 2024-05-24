# Write here, what your pack should do in each tick:
function the_beber_bonk_villager:check_trigger_objectives
execute if score #loaded VB_entityid matches 1 run function the_beber_bonk_villager:check_for_id_assignment
execute if predicate the_beber_bonk_villager:restock_time run function the_beber_bonk_villager:bonked_restock
execute if predicate the_beber_bonk_villager:new_day run execute as @e[tag=VB_bonked_state] run data modify entity @s RestocksToday set value 0
#execute as @a run function the_beber_bonk_villager:assign_uuid TODO
