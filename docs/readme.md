
<div align="center">
<h1 align="center">

<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-markdown-open.svg" width="100">

<div><p>PydocsAI</p></h1>


> [insert-project-summary]

![openai](https://img.shields.io/badge/OpenAI-412991.svg?style=for-the-badge&logo=OpenAI&logoColor=white)![pandas](https://img.shields.io/badge/pandas-150458.svg?style=for-the-badge&logo=pandas&logoColor=white)![pytest](https://img.shields.io/badge/Pytest-0A9EDC.svg?style=for-the-badge&logo=Pytest&logoColor=white)![sh](https://img.shields.io/badge/GNU%20Bash-4EAA25.svg?style=for-the-badge&logo=GNU-Bash&logoColor=white)![py](https://img.shields.io/badge/Python-3776AB.svg?style=for-the-badge&logo=Python&logoColor=white)![json](https://img.shields.io/badge/JSON-000000.svg?style=for-the-badge&logo=JSON&logoColor=white)![markdown](https://img.shields.io/badge/Markdown-000000.svg?style=for-the-badge&logo=Markdown&logoColor=white)

</div>


---

## Table of Contents


- [Table of Contents](#table-of-contents)
- [Introduction](#introduction)
- [Feautres](#feautres)
- [Repository Structure](#repository-structure)
- [Modules](#modules)
- [src](#src)
- [| main.py      | This code is for a program called PydocsAI. It reads a configuration file, clones a codebase from a given URL, and uses an OpenAI engine to generate a summary of the code. It then writes the summary to a CSV file and builds the project readme docs. Finally, it logs that the processing is complete and the readme docs can be found in the docs folder.                                                                   |](#-mainpy-------this-code-is-for-a-program-called-pydocsai-it-reads-a-configuration-file-clones-a-codebase-from-a-given-url-and-uses-an-openai-engine-to-generate-a-summary-of-the-code-it-then-writes-the-summary-to-a-csv-file-and-builds-the-project-readme-docs-finally-it-logs-that-the-processing-is-complete-and-the-readme-docs-can-be-found-in-the-docs-folder-------------------------------------------------------------------)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Running PydocsAI](#running-pydocsai)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgments](#acknowledgments)

---
## Introduction

> [insert-description]

## Feautres

> [insert-description]

---

<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-github-open.svg" width="80" />

## Repository Structure
```bash
.
├── Makefile
├── README.md
├── conf
│   ├── badges.json
│   └── conf.toml
├── docs
│   ├── imgs
│   │   ├── docs.png
│   │   ├── head.png
│   │   ├── tree.png
│   │   └── usage.png
│   ├── raw_data.csv
│   └── readme.md
├── pyproject.toml
├── requirements.txt
├── scripts
│   ├── run_main.sh
│   └── test.sh
├── setup
│   ├── environment.yaml
│   └── setup.sh
├── setup.py
├── src
│   ├── __init__.py
│   ├── builder.py
│   ├── conf.py
│   ├── logger.py
│   ├── main.py
│   ├── model.py
│   ├── processor.py
│   └── utils.py
└── tests
    ├── conftest.py
    ├── test_builder.py
    ├── test_conf.py
    ├── test_logger.py
    ├── test_main.py
    ├── test_model.py
    ├── test_processor.py
    └── test_utils.py

8 directories, 33 files
```
---

<img src="https://raw.githubusercontent.com/PKief/vscode-material-icon-theme/ec559a9f6bfd399b82bb44393651661b08aaf7ba/icons/folder-src-open.svg" width="80" />

## Modules
## src
| file         | summary                                                                                                                                                                                                                                                                                                                                                                                                                          |
|:-------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| conf.py      | This code defines a class called AppConfig which contains five other classes: OpenAI, GitHub, Markdown, Paths, and AppConfig. Each of these classes contains variables that are used to store information related to the project.                                                                                                                                                                                                |
| processor.py | This code is a function that clones a GitHub repository to a temporary directory, parses the codebase to get each file as a raw string, gets the file extensions and packages to help generate project badge icons, and creates an environment file.                                                                                                                                                                             |
| logger.py    | This code creates a Logger class that is used to log messages with different levels of severity. It also configures the logger to use a colored formatter to display the log messages with different colors for different levels of severity.                                                                                                                                                                                    |
| model.py     | This code is a Python function that uses the OpenAI Codex API to summarize Python code. It takes two parameters: an engine name and a dictionary of file names and code contents. It returns a dictionary of file names and code summaries. It also includes an exception handler for OpenAI API errors.                                                                                                                         |
| builder.py   | This code is a function that builds a markdown file from a configuration object, a list of packages, and a URL. It reads a CSV file, reads a JSON file, and uses the git library to clone a repository. It then formats the markdown file with the data it has collected and writes it to a file.                                                                                                                                |
| utils.py     | The FileFactory class is a utility class that provides a get_handler() method which takes a file path as an argument and returns a FileHandler object based on the file type. The FileHandler class is an abstract class that provides read_file() and write_file() methods. There are five subclasses of FileHandler that provide implementations for reading and writing different file types (CSV, JSON, HTML, MD, and TOML). |
| main.py      | This code is for a program called PydocsAI. It reads a configuration file, clones a codebase from a given URL, and uses an OpenAI engine to generate a summary of the code. It then writes the summary to a CSV file and builds the project readme docs. Finally, it logs that the processing is complete and the readme docs can be found in the docs folder.                                                                   |
---


## Getting Started

### Prerequisites

Before you begin, ensure that you have the following prerequisites installed:


> - [insert-prerequisites-if-needed]


### Installation

1. Clone the PydocsAI repository:


```sh
git clone https://github.com/eli64s/PydocsAI && cd PydocsAI
```

2. Create a new Conda environment and install the required dependencies:

```sh
conda env create -f setup/environment.yaml
conda activate PydocsAI
```

> 3. [insert-additional-steps]


```sh
 #... 
```

### Running PydocsAI

```sh
# ... 
```

---


## Roadmap


> - [X] [insert-task]

> - [ ] [insert-task]

> - [ ] [insert-task]

---


## Contributing

> [insert-description]

---


## License

> [insert-description]

---


## Contact

> [insert-description]

---


## Acknowledgments

> [insert-description]

---