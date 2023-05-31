from crankshaft:api import Listener
from crankshaft:flags import is_charging_bow
from crankshaft:events import on_player_tick



@Listener(on_player_tick)
def player_tick():
    if is_charging_bow:
        say TRUE
    else:
        say FALSE


    if is_charging_bow:
        say TRUE
    else:
        say FALSE


