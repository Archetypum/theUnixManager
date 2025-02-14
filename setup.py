#!/usr/bin/python3

from setuptools import setup

"""
:authors: Archetypum
:license: GNU Lesser General Public License v3, see LICENSE-LGPL.md file.
:copyright: (c) 2025 Archetypum
"""

long_description: str = """
Ultimate package manager and init system handling library made by Archetypum that simplifies interaction with UNIX systems and creation of system-related Python scripts.
"""

setup(
    name="theUnixManager",
    version="1.1.3",
    license="GNU Lesser General Public License v3, see LICENSE-LGPL.md file",
    author="Archetypum",
    author_email="archetypum@tutamail.com",
    description=(
        "Ultimate package manager and init system handling library made by Archetypum that simplifies interaction with UNIX systems and creation of system-related Python scripts."
    ),
    long_description=long_description,
    url="https://github.com/Archetypum/theUnixManager",
    download_url="https://github.com/Archetypum/theUnixManager/releases/tag/v1.1.3-stable",
    packages=["the_unix_manager"],
    install_requires=[],
    classifiers=[
        "License :: OSI Approved :: GNU Lesser General Public License v3 or later (LGPLv3+)",
        "Operating System :: Unix",
        "Intended Audience :: Developers",
        "Programming Language :: Python :: 3",
    ]
)

