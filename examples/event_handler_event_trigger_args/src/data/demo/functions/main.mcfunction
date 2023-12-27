from crankshaft:api import event

@event
def player_charge_bow_start():
    tellraw @s "START"

@event
def player_charge_bow(charge_time):
    tellraw @s charge_time

@event
def player_charge_bow_end(charge_time):
    tellraw @s ["END ", charge_time]

@event
def player_shot_bow(charge_time):
    tellraw @s ["SHOOT ", charge_time]

@event
def player_jump():
    say jump!
