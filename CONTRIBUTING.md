# Contributing to Snooper



Thank you for contributing.



## Development setup



1. Clone the repository.

2. Create and activate a Python virtual environment.

3. Install the package and development dependencies:



```bash

python -m pip install -e ".[dev]"

```



## Making changes



- Edit the notebooks under `nbs/`, not the generated files under `snooper_pkg/`.

- Keep the MVP scope focused on transparent foreground-application monitoring.

- Do not add keystroke, screenshot, password, message, or full-page-content capture.

- Run the following before committing:



```bash

nbdev-prepare

```



## Testing



Run portable tests with:



```bash

nbdev-test

```



Windows-specific changes should also be tested on a real Windows installation, especially tray behaviour, foreground tracking, idle detection, pause/resume, and clean exit.



## Pull requests



Please include:



- a concise description of the change

- tests performed

- any Windows-specific notes

- confirmation that generated files are up to date


