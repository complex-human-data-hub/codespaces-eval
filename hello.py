# Run me from the terminal:  python hello.py
import platform
import sys


def greet(name: str) -> str:
    return f"Hello, {name} - from Python inside a container!"


print(greet("workshop"))
print("Python", sys.version.split()[0], "on", platform.system())
