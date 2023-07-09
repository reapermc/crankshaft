from crankshaft:api import Listener
from crankshaft:events import on_player_shoot_bow


@Listener(on_player_shoot_bow)
def _(charge_time):
    tellraw @s charge_time
    say event fired!
