# as: @a[scores={villagerBonk=1..}]; at: [worldspawn]
execute if predicate eingruenesbeb.bonk_villager:has_stick run item modify entity @s weapon eingruenesbeb.bonk_villager:convert_stick
execute unless predicate eingruenesbeb.bonk_villager:has_stick run tellraw @s {"text":"You need to hold a singlular stick to do this!","color":"yellow"}
scoreboard players set @s villagerBonk 0
