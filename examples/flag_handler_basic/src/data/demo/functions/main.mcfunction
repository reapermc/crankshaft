from crankshaft:flags import is_player, is_burning




if is_player:
    say TRUE
else:
    say FALSE

if not is_burning:
    say you are not on fire
else:
    say actually... you are on fire
