from crankshaft:api import Listener
import crankshaft:events as e


# this makes testing all events easier
def run(event):
    @Listener(event)
    def _():
        say event.id
        playsound minecraft:block.dispenser.fail master @a ~ ~ ~ 0.1 2


# run(e.on_load)
# # run(e.on_tick)
# run(e.on_player_load)
# # run(e.on_player_tick)
# run(e.on_player_join)
# run(e.on_player_jump)
# run(e.on_player_land)
# run(e.on_player_sneak_start)
# run(e.on_player_sneak)
# run(e.on_player_sneak_end)
# run(e.on_player_sprint_start)
# run(e.on_player_sprint)
# run(e.on_player_sprint_end)
# run(e.on_player_glide_start)
# run(e.on_player_glide)
# run(e.on_player_glide_end)
# run(e.on_player_swim_start)
# run(e.on_player_swim)
# run(e.on_player_swim_end)
# run(e.on_player_burn_start)
# run(e.on_player_burn)
# run(e.on_player_burn_end)
# run(e.on_player_airborne_start)
# run(e.on_player_airborne)
# run(e.on_player_airborne_end)
# run(e.on_player_charge_bow_start)
# run(e.on_player_charge_bow)
# run(e.on_player_charge_bow_end)
# run(e.on_player_shoot_bow)
# run(e.on_player_inventory_change)
# run(e.on_player_use_coas)
# run(e.on_player_use_wfoas)

# @Listener(e.on_player_attack_entity)
# def _(victim, direct):
#     say I hit something!

#     as victim:
#         say I got hit!

# @Listener(e.on_entity_attack_player)
# def _(victim, direct):
#     say I hit something!
    
#     as victim:
#         say I got hit!
