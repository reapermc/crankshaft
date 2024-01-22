@echo off
rd /s /q dist
sphinx-build -b html source/ dist/
