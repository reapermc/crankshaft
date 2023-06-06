from crankshaft:api import Listener
from crankshaft:events import on_player_sneak_start, on_player_tick
from crankshaft:flags import is_sneaking



@Listener(on_player_tick)
def player_tick():
    if is_sneaking:
        say ++sneaking

@Listener(on_player_sneak_start)
def player_sneak_start():
    say sneaking!


