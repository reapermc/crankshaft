# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'crankshaft'
copyright = '2024, ArcticYeti'
author = 'ArcticYeti'
release = '1.0.0'

# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = [
    "sphinx_inline_tabs",
]

templates_path = ['_templates']
exclude_patterns = []


# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'furo'
html_title = 'Crankshaft Documentation'
html_logo = 'logo.png'
html_static_path = ['_static']
html_theme_options = {
    "dark_css_variables": {
        "color-brand-primary": '#EC7210',
        "color-brand-content": '#EC7210',
    },
    "sidebar_hide_name": True,
}