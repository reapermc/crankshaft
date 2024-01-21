Using Flags
===========

Flags provide a convenient way to encapsulate boolean checks. These flags serve as simple wrappers for various conditions.

Overview
--------

To begin using flags, import the ``flag`` object from the ``crankshaft:api`` module.

You can access registered flags with the attributes of the ``flag`` object.

For a comprehensive list of built-in flags, refer to :doc:`Built-in Flags <builtin_flags/index>`.

Example
-------

Here's a basic example demonstrating flag usage in Python:

.. code-block:: python

    from crankshaft:api import crankshaft

    if flag.is_airborne == True:
        tellraw @a "in air!"
    if flag.is_sneaking == False:
        tellraw @a "on ground!"

Current Limitations
-------------------

While flags offer a simple and intuitive approach to boolean checks, it's essential to be aware of their current limitations:

- **Conditional Statements**: Flags do not currently support more complex conditions such as ``not``, ``else``, ``and``, or ``or`` statements.

- **Python Truthiness**: The flags do not yet incorporate Python's idiomatic truthiness checking.

- **Custom Flags**: Defining custom flags is not yet supported in the current version.

Please keep these limitations in mind as you work with flags, and be aware that future updates may address these constraints.
