scoreboard players operation .timer3 timer = .timer2 timer
scoreboard players operation .timer3 timer /= .60 timer
scoreboard players operation .TMinutes timer = .timer3 timer
scoreboard players set .TSeconds timer 60
bossbar set minecraft:time visible true
bossbar set minecraft:time players @a
execute store result bossbar minecraft:time max run scoreboard players get .gt settings
bossbar set minecraft:time name ["",{"score":{"name":".TMinutes","objective":"timer"}},{"text":":"},{"score":{"name":".TSeconds","objective":"timer"}}]
function cf:game/ingame/timer/time
