execute store result score .random random run random value 0..100
execute if score .random random matches 0..30 run function cf:events/moon/startmoon
execute if score .random random matches 31..40 run function cf:events/doublefeathers/event
execute if score .random random matches 41..70 run function cf:events/justchickens/spawn
execute if score .random random matches 71..85 run function cf:events/eggsplosion/eggsplosion
execute if score .random random matches 86..95 run function cf:events/speed/give
execute if score .random random matches 96..100 run function cf:events/strenght/give

