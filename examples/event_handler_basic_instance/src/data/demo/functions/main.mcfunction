from crankshaft:api import supports_events, event

@supports_events
class A:
    def __init__(self):
        print('original init')

    @event
    def load(self):
        say <instance_event> load 1!
        print('<instance_event> load 1!')

    @event
    def load(self):
        say <instance_event> load 2!
        print('<instance_event> load 2!')

a = A()
a = A()
# a = A()
