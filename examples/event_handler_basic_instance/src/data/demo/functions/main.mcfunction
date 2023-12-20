from crankshaft:api import supports_events, event

@supports_events
class A:
    def __init__(self):
        print('original init')

    @event
    def load(self):
        say load 1!
        print('load 1!')

    @event
    def load(self):
        say load 2!
        print('load 2!')

a = A()
# a = A()
# a = A()
