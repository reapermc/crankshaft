from crankshaft:api import event

@event
def player_sprint_start():
    tellraw @a "start"

@event
def player_sprint(sprint_time):
    tellraw @s sprint_time

@event
def player_sprint_end(sprint_time):
    tellraw @s ["end ", sprint_time]

@event
def player_swim_start():
    tellraw @s "start"

@event
def player_swim(swim_time):
    tellraw @s swim_time

@event
def player_swim_end(swim_time):
    tellraw @s ["end ", swim_time]
