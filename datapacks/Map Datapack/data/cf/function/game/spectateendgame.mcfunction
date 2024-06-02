function cf:game/start/playercount
execute if score .teamcount playercount matches 0 if score .speccount playercount matches 1.. run function cf:game/endgame/endgame