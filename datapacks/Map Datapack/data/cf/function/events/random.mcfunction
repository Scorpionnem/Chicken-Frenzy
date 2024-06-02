execute store result score .random random run random value 1..2
execute if score .random random matches 1 run function cf:events/goldenegg/spawnegg

schedule function cf:events/random 30s