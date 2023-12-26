from crankshaft:api import event

@event
def player_tick():
    say hi! ;)

@event
def player_load():
    tellraw @s "There you go! ^^"
    give @s diamond

@event
def player_shot_bow(charge_time):
    tellraw @s "woosh!"

@event
def load():
    say hi
