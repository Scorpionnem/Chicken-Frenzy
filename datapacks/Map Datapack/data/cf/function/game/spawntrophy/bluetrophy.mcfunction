#tag trophée : trophyblue #tag poulet rouge: bluechicken #tag text display : bluetext
data merge entity @e[type=minecraft:text_display,limit=1,tag=redtext,sort=nearest] {text:'["Last score: ",{"score":{"name":".Red","objective":"score"}}]'}
data merge entity @e[type=minecraft:text_display,limit=1,tag=bluetext,sort=nearest] {text:'["Last score: ",{"score":{"name":".Blue","objective":"score"}}]'}
item replace entity @e[tag=trophyblue] container.0 with paper[custom_model_data=2020]
item replace entity @e[tag=trophyred] container.0 with air