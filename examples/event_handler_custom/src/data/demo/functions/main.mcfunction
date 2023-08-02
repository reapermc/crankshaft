from crankshaft:api import Event, Entrypoint
from crankshaft:events import on_load

def handler(event):
    func_path = event.path('scheduled')

    execute function func_path:
        schedule function func_path 10
        event.trigger()

# le epic event name
on_10_tick = Event('on_10_tick')
on_10_tick.attach_handler(handler, on_load, Entrypoint.EVENT)


from crankshaft:api import Listener

@Listener(on_10_tick)
def _():
    say hello!