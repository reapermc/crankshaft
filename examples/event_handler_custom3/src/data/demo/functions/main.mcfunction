from crankshaft:api import Event, Entrypoint
from crankshaft:events import on_player_shoot_bow

def handler(event):
    say <custom event stuff>
    event.trigger()





on_player_shoot_runic_bow = Event('on_player_shoot_runic_bow')
on_player_shoot_runic_bow.attach_handler(handler, on_player_shoot_bow, Entrypoint.EVENT)











from crankshaft:api import Listener


@Listener(on_player_shoot_runic_bow)
def _():
    say shot bow
