# as: @s (player run function); at: @s

# Delete scoreboard objectives:
scoreboard objectives remove villagerBonk
scoreboard objectives remove the_beber_BV_found_ne
scoreboard objectives remove the_beber_BV_search
scoreboard objectives remove the_beber_BV_neg_gossip
scoreboard objectives remove the_beber_BV_const

# Clear storage
data remove storage the_beber_bonk_villager:gossip_system GossipType
data remove storage the_beber_bonk_villager:gossip_system LastToSearch
data remove storage the_beber_bonk_villager:gossip_system LastToSearchBackup
data remove storage the_beber_bonk_villager:gossip_system GossipsCopy
data remove storage the_beber_bonk_villager:gossip_system Target

# The tags and effects can not be removed automatically. Tell the user how to do it manually instead.
tellraw @s ["",{"text":"Removed data and objectives.","color":"green"},{"text":"\n"},{"text":"Important: ","bold":true,"color":"yellow"},{"text":"Tags and effects cannot be removed automatically. Please load affected Villagers and run the following actions by clicking:","color":"yellow"},{"text":"\n"},{"text":"- ","color":"aqua"},{"text":"Reset NoAI state","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute as @e[tag=the_beber_BV_bonked_state] run data modify entity @s NoAI set value 0b"}},{"text":"\n- ","color":"aqua"},{"text":"Remove tags","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/tag @e[tag=the_beber_BV_bonked_state] remove the_beber_BV_bonked_state"}}]

# Lastly disable the datapack:
datapack disable "file/Bonk Villager v1.4-MC1.21.zip"
