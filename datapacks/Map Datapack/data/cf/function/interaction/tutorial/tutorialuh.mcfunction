execute at @s run playsound minecraft:block.note_block.chime player @s ~ ~ ~

execute if score .tutorial tutorial matches 1 run tellraw @s ["",{"text":"The chicken net !","color":"red"},{"text":"\n"},{"text":"The chicken net is used to catch chickens. (Just left click on the chickens)\nYou can also use it to hit players !","color":"green"}]



execute if score .tutorial tutorial matches 7 run tellraw @s ["",{"text":"The chicken ride !","color":"red"},{"text":"\n"},{"text":"This item will make you ride a giant chicken, you can dismount it at any moment but the chicken is here for a limited time !\nBe aware the giant chickens are not the smartest !","color":"green"}]



execute if score .tutorial tutorial matches 3 run tellraw @s ["",{"text":"The shop !","color":"red"},{"text":"\n"},{"text":"The shop is located in each team's base.\nYou can trade feathers to get items.\nTo get feathers, just catch chickens or kill players !","color":"green"}]



execute if score .tutorial tutorial matches 4 run tellraw @s ["",{"text":"Size changers !","color":"red"},{"text":"\n"},{"text":"These items (Biginator and Smallinator) can be used to change your size (Big or Small).\nChanging your size is really usefull to sneak on your enemies or to help you fight !\nBe aware you have a limited time !","color":"green"}]



execute if score .tutorial tutorial matches 5 run tellraw @s ["",{"text":"The Flash Egg !","color":"red"},{"text":"\n"},{"text":"This item can be placed down and will flash all players that are around it.\nYou can use it when you are being chased !\nBe aware, it will flash ALL players that are around it !","color":"green"}]



execute if score .tutorial tutorial matches 6 run tellraw @s ["",{"text":"The feather staff !","color":"red"},{"text":"\n"},{"text":"This magic staff will launch feathers at your enemies !\nThese feathers will freeze the target in a feather block.\nIt is really usefull if you are low on health.","color":"green"}]

execute if score .tutorial tutorial matches 2 run tellraw @s ["",{"text":"What do I do with my chicken ?","color":"red"},{"text":"\n"},{"text":"When you catch a chicken, it will show up on your head.\nThe only thing you should do is RUN !\nYou cant hit other players when you have a chicken so you cant fight back !","color":"green"}]

execute if score .tutorial tutorial matches 8 run tellraw @s ["",{"text":"How to play ?","color":"red"},{"text":"\n"},{"text":"Chicken frenzy is a score based game, you have to catch chickens and get them back to your base to gain score.\nChickens will spawn in the middle of the map for you to catch.\nYou can also steal your enemies chickens !\nEvery chicken that you catch and get back to your base will give your team 10 Points.\nAt the end of each game, each chicken that you have in your base will add 5 Points to your team's score.","color":"green"}]

execute if score .tutorial tutorial matches 9 run tellraw @s ["",{"text":"The golden egg !","color":"red"},{"text":"\n"},{"text":"The golden egg has a 50% chance of spawning when chickens spawn on the map.\nYou can break open the egg by hitting it !\nWhen the egg opens a random event will happen.\nTry to get them all !","color":"green"}]