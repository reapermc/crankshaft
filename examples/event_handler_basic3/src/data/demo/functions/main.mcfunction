from crankshaft:api import Listener
from crankshaft:events import on_player_shoot_bow, on_player_charge_bow, on_player_charge_bow_end


@Listener(on_player_shoot_bow)
def _(charge_time):
    tellraw @s ["* ", charge_time]

@Listener(on_player_charge_bow_end)
def _(charge_time):
    tellraw @s ["# ", charge_time]

@Listener(on_player_charge_bow)
def _(charge_time):
    tellraw @s charge_time
