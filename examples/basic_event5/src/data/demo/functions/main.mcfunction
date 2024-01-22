from crankshaft:api import event

@event
def player_airborne_start():
    tellraw @a "start"

@event
def player_airborne(air_time):
    tellraw @s air_time 

@event
def player_airborne_end(air_time):
    tellraw @s ["end ", air_time]

@event
def player_sneak_start():
    tellraw @s "start"

@event
def player_sneak(sneak_time):
    tellraw @s sneak_time

@event
def player_sneak_end(sneak_time):
    tellraw @s sneak_time
