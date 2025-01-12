# theUnixManager
![theUnixManagerEdited](https://github.com/user-attachments/assets/6c0b3fbc-1d09-4d35-9dde-33b22a468c45)

theUnixManager - ultimate package manager && init system handling library made by Archetypum
that simplifies interaction with UNIX systems and creation of system-related python scripts. 

## Installation (as root):

```bash
pip install theUnixManager
```

And then use it in your python scripts:

```python3
#!/usr/bin/python3

import the_unix_manager as tum

distro = tum.get_user_distro()
init_system = tum.get_init_system()

tum.package_handling(distro, package_list=["git", "vim", "htop", "emacs"], command="install")
tum.init_system_handling(init_system, command="start", service="ssh")

tum.start_shell()
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