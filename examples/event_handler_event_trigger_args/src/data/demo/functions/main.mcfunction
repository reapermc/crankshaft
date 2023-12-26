from crankshaft:api import event

@event
def player_shot_bow(charge_time):
    tellraw @s charge_time

    
