# theUnixManager

theUnixManager - ultimate package manager && initem ht sysandler made by Archetypum that simplifies interaction with UNIX systems and creation of system-related python/bash scripts. 

## Installation (as root):

```bash
git clone https://github.com/Archetypum/theUnixManager
```

```bash
cd theUnixManager
```

And then use it in your scripts:

```python3
#!/usr/bin/python3

import the_unix_manager as tum

distro = tum.get_user_distro()
init_system = tum.get_init_system()

tum.package_handling(distro, package_list=["git", "vim", "htop"], command="install")
```

## Credits

theUnixManager is a project by Archetypum with:
 - Kinderfeld as the lead developer and creator.
(https://github.com/Kinderfeld)
 - WretchOfLights as the documentation writer.
(https://github.com/WretchOfLights)
- wazups as the illustrator
(https://github.com/wazups)

## License

theUnixManager uses GNU Lesser General Public License V3. 

More information in:

- LICENSE.md
- https://www.fsf.org
- https://www.gnu.org

![gnu](https://github.com/user-attachments/assets/66935a97-374f-4dbc-9f1c-428070fda139)
