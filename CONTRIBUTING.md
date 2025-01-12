## Contributing to theUnixManager

We appreciate contributing on theUnixManager, please, if you want to contribute read this file to know the main rules in code writing and code style.

We appreciate contributing in:

- Code

- Testing

- Giving new ideas

## Development environment

Installation:

You can see proper installation of theUnixManager in README.md.

OS: 

GNU/Linux, BSD

## Code writing

Please consider next rules of writing if you want to help theUnixManager:

- PEP8

- Use Explicit Type Conversion in python scripts:

Examples:

```python3
number: int = 1984
```

```python3
string: str = "theUnixManager"
```

```python3
def function(arg: str = "default_value") -> None:
	...
```

- And don't forget to add at the end of your code:

```python3
if __name__ == "__main__":
	function()
```

## Pull Requests

**To create and send pull request, please, follow next steps**

To create a pull request in GitHub:

- Fork the repository you want to contribute to
- Make your changes in a new branch
- Push those changes to your fork 
- Go to the original repository, click on "Compare & pull request," and fill out the necessary details before clicking "Create pull request."

* **Please check if the PR fulfills these requirements**
- [ ] The commit follows our code writing
- [ ] Tests for the changes have been added (for bug fixes / features)
- [ ] Docs have been added / updated (for bug fixes / features)


* **What kind of change does this PR introduce?** (Bug fix, feature, docs update, ...)



* **What is the current behavior?** (You can also link to an open issue here)



* **What is the new behavior (if this is a feature change)?**



* **Other information**:

## Issues Tracker

You can send the issue on GitHub theUnixManager in "Issues" -> "New Issue" -> "Submit New Issue"

Provide us next information about your issue:

- Your OS

- Your init system

- The method you were trying to call

- Line of code where issue is detected

- Expected behavior

- The thing you encountered

## License

More information in LICENSE.md

## Code of Conduct

More information in CODE_OF_CONDUCT.md
