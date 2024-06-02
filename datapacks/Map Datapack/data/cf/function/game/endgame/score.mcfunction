execute if score .Blue score > .Red score run function cf:game/endgame/bluewin

execute if score .Red score > .Blue score run function cf:game/endgame/redwin

execute if score .Blue score = .Red score run function cf:game/endgame/tie
