#!/usr/bin/python3

from io import open
from setuptools import setup

"""
:authors: Archetypum
:license: GNU Lesser General Public License V3, see LICENSE.md file.
:copyright: (c) 2025 Archetypum
"""

long_description: str = """
Ultimate package manager and init system handling library made by Archetypum that simplifies interaction with UNIX systems and creation of system-related Python scripts.
"""

setup(
    name="theUnixManager",
    version="1.0.0",
    license="GNU Lesser General Public License V3, see LICENSE.md file",
    author="Archetypum",
    author_email="archetypum@tutamail.com",
    description=(
        "Ultimate package manager and init system handling library made by Archetypum that simplifies interaction with UNIX systems and creation of system-related Python scripts."
    ),
    long_description=long_description,
    url="https://github.com/Archetypum/theUnixManager-python",
    download_url="https://github.com/Archetypum/archive/v{}.zip".format("1.0.0"),
    packages=["the_unix_manager"],
    install_requires=[],
    classifiers=[
        "License :: OSI Approved :: GNU Lesser General Public License v3 or later",
        "Operating System :: UNIX-like",
        "Intended Audience :: Developers",
        "Programming Language :: Python :: 3",
    ]
)

