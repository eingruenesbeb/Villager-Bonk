# as: @e, if: score @s VB_entityid = $hit VB_entityid, at: [worldspawn]
# Looping search for the correct NBT-entry to modify. Checks the type and target of the gossip entry. This uses the property of the "data modify [...]" command to fail, if the source and target data is identical.
scoreboard players set %VB_found_nentry% VB_found_ne 1
scoreboard players set %VB_search% VB_search 0

# Save the UUID of the nearest to be forgiven player inside of storage temporarily:
data modify storage the_beber_bonk_villager:gossip_system Target set from entity @p[sort=nearest, tag=VB_to_forgive] UUID

# Test last element, if it is the correct entry:
execute store success score %VB_found_nentry% VB_found_ne run data modify storage the_beber_bonk_villager:gossip_system Target set from storage the_beber_bonk_villager:gossip_system GossipsCopy[-1].Target
execute if score %VB_found_nentry% VB_found_ne matches 0 store success score %VB_found_nentry% VB_found_ne run data modify storage the_beber_bonk_villager:gossip_system GossipType set from storage the_beber_bonk_villager:gossip_system GossipsCopy[-1].Type
# The value at storage "the_beber_bonk_villager:gossip_system GossipType" is being reset for the next iteration.
data modify storage the_beber_bonk_villager:gossip_system GossipType set value "minor_negative"

# Shuffle the last element in front of the list.
data modify storage the_beber_bonk_villager:gossip_system GossipsCopy prepend from storage the_beber_bonk_villager:gossip_system GossipsCopy[-1]
data remove storage the_beber_bonk_villager:gossip_system GossipsCopy[-1]

# If the list is identical to the original one, force stop the search, as every entry should have been searched by then. Otherwise stop the search and modify the first entry, which should be a match, if the corresponding score is 1, or continue the search.
execute store success score %VB_search% VB_search run data modify storage the_beber_bonk_villager:gossip_system LastToSearch set from storage the_beber_bonk_villager:gossip_system GossipsCopy[0]
data modify storage the_beber_bonk_villager:gossip_system LastToSearch set from storage the_beber_bonk_villager:gossip_system LastToSearchBackup
execute if score %VB_found_nentry% VB_found_ne matches 0 run function the_beber_bonk_villager:curb_gossip
execute if score %VB_search% VB_search matches 1 run function the_beber_bonk_villager:search_gossip_entry
