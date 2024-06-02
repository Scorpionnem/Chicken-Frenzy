item replace entity @e[type=item_display,tag=leftarrow,tag=red] container.0 with paper[custom_model_data=2003]
item replace entity @e[type=item_display,tag=rightarrow,tag=red] container.0 with paper[custom_model_data=2005]

item replace entity @e[tag=blue,tag=rightarrow,type=item_display] container.0 with paper[custom_model_data=2003]
item replace entity @e[tag=blue,tag=leftarrow,type=item_display] container.0 with paper[custom_model_data=2003]

item replace entity @e[tag=blue,tag=buy,type=item_display] container.0 with paper[custom_model_data=2006]
item replace entity @e[type=item_display,tag=buy,tag=red] container.0 with paper[custom_model_data=2006]

item replace entity @e[type=item_display,tag=settings,tag=left] container.0 with paper[custom_model_data=2003]
item replace entity @e[type=item_display,tag=settings,tag=right] container.0 with paper[custom_model_data=2005]
item replace entity @e[type=item_display,tag=settings,tag=select] container.0 with paper[custom_model_data=2006]

item replace entity @e[type=armor_stand,tag=map,tag=left] armor.head with paper[custom_model_data=2003]
item replace entity @e[type=armor_stand,tag=map,tag=right] armor.head with paper[custom_model_data=2005]

item replace entity @e[tag=startbutton] container.0 with paper[custom_model_data=2017]

item replace entity @e[tag=tutorialout] container.0 with paper[custom_model_data=2017]

item replace entity @e[tag=tutorialright,type=item_display] container.0 with paper[custom_model_data=2005]
item replace entity @e[tag=tutorialleft,type=item_display] container.0 with paper[custom_model_data=2005]

execute if score .start settings matches 1 run item replace entity @e[tag=startbutton] container.0 with paper[custom_model_data=2026]
