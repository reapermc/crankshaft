from crankshaft:api import Listener
from crankshaft:events import on_player_attack_entity, on_entity_attack_player, on_tick
from lightning_rod:api import give


@Listener(on_player_attack_entity)
def player_attack_entity(attacker, child):
    say 'I GOT HIT'
    particle flame ~ ~ ~ 0 0 0 1 25 force

    as attacker:
        say 'ATTACKER'

    as child:
        say 'DIRECT'

@Listener(on_entity_attack_player)
def entity_attack_player(attacker, child):
    say 'I GOT HIT'
    give('diamond')

    as attacker:
        say 'ATTACKER'

    as child:
        say 'DIRECT'
