from crankshaft:api import event

@event
def player_use_coas():
    say click!
    give @s diamond
