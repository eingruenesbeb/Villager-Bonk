# Restocking:
execute run data modify entity @s Offers.Recipes[0].uses set value 0
execute run data modify entity @s Offers.Recipes[1].uses set value 0
execute run data modify entity @s Offers.Recipes[2].uses set value 0
execute run data modify entity @s Offers.Recipes[3].uses set value 0
execute run data modify entity @s Offers.Recipes[4].uses set value 0
execute run data modify entity @s Offers.Recipes[5].uses set value 0
execute run data modify entity @s Offers.Recipes[6].uses set value 0
execute run data modify entity @s Offers.Recipes[7].uses set value 0
execute run data modify entity @s Offers.Recipes[8].uses set value 0
execute run data modify entity @s Offers.Recipes[9].uses set value 0

execute as @e[tag=the_beber_BV_bonked_state] if data entity @s {RestocksToday:1} run data modify entity @s RestocksToday set value 2
execute as @e[tag=the_beber_BV_bonked_state] if data entity @s {RestocksToday:0} run data modify entity @s RestocksToday set value 1
