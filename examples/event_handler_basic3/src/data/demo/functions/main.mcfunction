from crankshaft:api import Listener
from crankshaft:events import
    on_player_charge_bow_start,
    on_player_charge_bow,
    on_player_charge_bow_end,
    on_player_shoot_bow,
    on_tick

@Listener(on_player_charge_bow_start)
def player_charge_bow_start():
    tellraw @s "EVENT player_charge_bow_start"

@Listener(on_player_charge_bow)
def player_charge_bow():
    tellraw @s "EVENT player_charge_bow"

@Listener(on_player_charge_bow_end)
def player_charge_bow_end():
    tellraw @s "EVENT player_charge_bow_end"


@Listener(on_player_shoot_bow)
def player_shoot_bow():
    tellraw @s "EVENT player_shot_bow"