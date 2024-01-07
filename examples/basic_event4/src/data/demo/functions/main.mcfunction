from crankshaft:api import event

@event
def player_shot_bow(charge_time):
    say poof!
    give @s diamond
    tellraw @s charge_time
