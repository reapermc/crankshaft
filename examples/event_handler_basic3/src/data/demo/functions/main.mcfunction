# from crankshaft:api import Listener, CheckFlag
# from crankshaft:flags import is_charging_bow
# from crankshaft:events import
#     on_player_jump,
#     on_player_land,
#     on_player_sneak_start,
#     on_player_sneak_end,
#     on_player_shoot_bow,
#     on_player_charge_bow,
#     on_player_charge_bow_start,
#     on_player_tick


# @Listener(on_player_jump)
# def player_jump():
#     say jumped!

# @Listener(on_player_land)
# def player_land():
#     say landed!


# @Listener(on_player_sneak_start)
# def player_sneak_start():
#     say started sneaking!

# @Listener(on_player_sneak_end)
# def player_sneak_end():
#     say ended sneaking!


# @Listener(on_player_shoot_bow)
# def player_shoot_bow():
#     say shot bow!

# @Listener(on_player_charge_bow)
# def player_charge_bow():
#     say charging bow!

from crankshaft:api import Listener
from crankshaft:events import
    on_player_charge_bow_start,
    on_player_charge_bow,
    on_player_charge_bow_end

@Listener(on_player_charge_bow_start)
def player_charge_bow_start():
    tellraw @s "EVENT player_charge_bow_start"

@Listener(on_player_charge_bow)
def player_charge_bow():
    tellraw @s "EVENT player_charge_bow"

@Listener(on_player_charge_bow_end)
def player_charge_bow_end():
    tellraw @s "EVENT player_charge_bow_end"

