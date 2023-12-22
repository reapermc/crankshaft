from crankshaft:api import supports_events, event, class_event

@supports_events
class A:
    def __init__(self):
        print('original init')

    @class_event
    def load(cls):
        say <class_event> load 1!
        print('<class_event> load 1!')

    @event
    def load(self):
        say <class_event> load 2!
        print('load 2!')

a = A()
a = A()
# a = A()
