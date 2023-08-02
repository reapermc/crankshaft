from crankshaft:api import Event, Entrypoint
from crankshaft:events import on_tick

# this assumes you already have the objective 'foobar' created

def handler(event):
    scoreboard players add $10_tick_timer foobar 1

    execute if score $10_tick_timer foobar matches 10..:
        scoreboard players set $10_tick_timer foobar 0
        event.trigger()

# le epic event name
on_10_tick = Event('on_10_tick')
on_10_tick.attach_handler(handler, on_tick, Entrypoint.EVENT)


# from crankshaft:api import Listener

# @Listener(on_tick)
# def _():
#     say tick!

# @Listener(on_10_tick)
# def _():
#     say 10tick!

