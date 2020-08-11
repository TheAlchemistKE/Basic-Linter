![](https://img.shields.io/badge/Microverse-blueviolet)
[![Build Status](https://travis-ci.org/KelynPNjeri/Basic-Linter.svg?branch=ft-lint-css)](https://travis-ci.org/KelynPNjeri/Basic-Linter)
[![Coverage Status](https://coveralls.io/repos/github/KelynPNjeri/Basic-Linter/badge.svg?branch=ft-lint-css)](https://coveralls.io/github/KelynPNjeri/Basic-Linter?branch=ft-lint-css)
[![Maintainability](https://api.codeclimate.com/v1/badges/83c90efb5f834d2cbe6d/maintainability)](https://codeclimate.com/github/KelynPNjeri/Basic-Linter/maintainability)

# Basic Linter

> This repo contains the code to my own version of a code linter. It checks through various file types checking for syntactical errors.

The main objective of this project was to build a simple linter that could parse through code and give you an output. My linter accepts a code snippet and parses through it to ensure that all is working alright. If it is, it returns a `positive message` if not it raises a `negative message`. For now, it only takes in the following code snippet types:
- [x] JSON
- [x] HTML
- [x] CSS
I went for the more minimalistic approach to building the project and used gems that perform the various parsing operations. In my case, I used:
- W3CValidator 
- json

The following are upcoming features to the project:
1. Lint HTML through a URI.
2. Give more precise errors like on what line it occurred

## Built With

- Ruby

## Live Demo
[Live Demo Link](https://livedemo.com)


## Getting Started
To get a local copy up and running follow these simple example steps.

### Prerequisites
- Git
- Ruby 

### Setup
To have the project up and running on your machine, follow the following:
- [ ] Clone the repo using `git clone https://github.com/KelynPNjeri/Basic-Linter.git`
- [ ] Open the cloned project.

### Usage
So far, this project only works for 3 types of code snippet:
1. HTML.
2. CSS.
3. JSON.

To lint your code snippet:
1. Run `main.rb` using `ruby bin/main.rb`.
2. A series of prompts will follow after seeing a welcome message i.e the path to the file you'd like to lint.
3. Enter the necessary details as asked.

### Run tests
To run the tests:
- From the project `root directory` run `rspec`


## Authors

👤 **Kelyn Paul Njeri**

- Github: [@KelynPNjeri](https://github.com/KelynPNjeri)
- Twitter: [@KelynNjeri](https://twitter.com/kelyn-njeri)
- Linkedin: [Kelyn Paul](https://linkedin.com/kelyn-paul)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
