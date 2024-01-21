Installation
============

You can install the library using the ``pip`` package manager.

.. code-block:: bash

   pip install crankshaft

If already installed, you can update the library to the latest version with the ``-U`` argument.

.. code-block:: bash

   pip install crankshaft -U


Project Setup
-------------

To use the library inside your Bolt project, ensure that your Beet configuration includes the following:

.. code-block:: yaml

    require:
      - bolt
      - crankshaft

    pipeline:
      - mecha

Now, you can directly import features from the library into your project!

.. warning::

    The library is specifically designed with ``.bolt`` modules in mind. Using it inside Bolt's ``.mcfunction`` functions is not and will not ever be officially supported!

    Here be dragons!

For importing stable features, use the ``crankshaft:api`` module. However, each documentation entry will provide you with import statements to simplify the process.

Here's an example import:

.. code-block:: python

    from crankshaft:api import event
