execute store result score .random random run random value 1..2


scoreboard players add @a feathers 1

execute if score .random random = .1 random run execute if score .map map = .1 map run summon chicken 1033 37 1034 {Health:1f,Tags:["wild"]}
execute if score .random random = .2 random run execute if score .map map = .1 map run summon chicken 1034 37 1012 {Health:1f,Tags:["wild"]}

execute if score .random random = .1 random run execute if score .map map = .2 map run summon chicken -1032 52 -1023 {Health:1f,Tags:["wild"]}
execute if score .random random = .2 random run execute if score .map map = .2 map run summon chicken -1034 52 -1023 {Health:1f,Tags:["wild"]}

execute if score .random random = .1 random run execute if score .map map = .3 map run summon chicken -1001 135 994 {Health:1f,Tags:["wild"]}
execute if score .random random = .2 random run execute if score .map map = .3 map run summon chicken -1007 135 990 {Health:1f,Tags:["wild"]}

execute if score .random random = .1 random run execute if score .map map matches 4 run summon chicken 985 109 -983 {Health:1f,Tags:["wild"]}
execute if score .random random = .2 random run execute if score .map map matches 4 run summon chicken 983 109 -983 {Health:1f,Tags:["wild"]}

execute if score .random random = .1 random run execute if score .map map matches 5 run summon chicken -2040 96 -1973 {Health:1f,Tags:["wild"]}
execute if score .random random = .2 random run execute if score .map map matches 5 run summon chicken -2045 96 -1972 {Health:1f,Tags:["wild"]}

scoreboard players operation .cst2 settings = .cst settings
