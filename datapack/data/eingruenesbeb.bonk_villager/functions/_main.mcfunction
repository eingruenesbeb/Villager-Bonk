# Write here, what your pack should do in each tick:
function eingruenesbeb.bonk_villager:_check_trigger_objective
execute if score #loaded eingruenesbeb.vb.entityid matches 1 run function eingruenesbeb.bonk_villager:hit_detection/_check_for_id_assignment
execute if predicate eingruenesbeb.bonk_villager:restock_time run function eingruenesbeb.bonk_villager:_bonked_restock
execute if predicate eingruenesbeb.bonk_villager:new_day run execute as @e[tag=eingruenesbeb.vb.bonked_state] run data modify entity @s RestocksToday set value 0
#execute as @a run function eingruenesbeb.bonk_villager:assign_uuid TODO
