from crankshaft:api import event

@event
def player_load():
    say loaded!
    give @s gold_ingot

@event
def player_charge_bow(charge_time):
    tellraw @s ["charging bow: ", charge_time]

@event
def player_charge_bow_start():
    tellraw @s "started charging bow!"

@event
def player_charge_bow_end(charge_time):
    tellraw @s ["finished charging: ", charge_time]

@event
def player_shot_bow(charge_time):
    tellraw @s ["shot bow: ", charge_time]

@event
def player_jump():
    say jumped!

@event
def player_land():
    say landed!

@event
def player_die():
    say died!

@event
def player_respawn():
    say respawned!

@event
def player_use_coas():
    say used coas!

@event
def player_use_wfoas():
    say used wfoas!
