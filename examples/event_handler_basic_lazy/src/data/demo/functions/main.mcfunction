from crankshaft:api import supports_events, event, lazy_class_event

@supports_events
class A:
    def __init__(self):
        print('original init')

    @lazy_class_event
    def load(cls):
        say <lazy_event> load 1!
        print('<lazy_event> load 1!')

    @lazy_class_event
    def load(self):
        say <lazy_event> load 2!
        print('<lazy_event> load 2!')

a = A()
a = A()
# a = A()
