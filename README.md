# Recipe-app

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [Recipe-app](#recipe-app)
- [📗 Table of Contents](#-table-of-contents)
- [📖 \[Recipe-app\] ](#-recipe-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
    - [Testing](#testing)
  - [👥 Authors ](#-authors-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [Recipe-app] <a name="about-project"></a>

**[Recipe-app]** keeps track of all your recipes, ingredients, and inventory. It will allow you to save ingredients, keep track of what you have, create recipes, and generate a shopping list based on what you have and what you are missing from a recipe. Also, since sharing recipes is an important part of cooking the app should allow you to make them public so anyone can access them.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

- Ruby
- Rails
- Postgresql

<!-- Features -->

### Key Features <a name="key-features"></a>

Buld models for:
- **[Users]**
- **[Food]**
- **[Recipe_food]**
- **[Recipe]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

- VScode
- Ruby
- Rails
- Postgres

### Setup

Clone this repository to your desired folder:

```sh
  git clone git@github.com:George7h/Recipe-app.git
  cd Recipe-app
```

### Install

Install this project with:

```sh
  cd Recipe-app
  bundle install
  
```



Create the local database:

 Edit databasy.yml and rename the database name and username and password according to your local environment then run:

```sh
  rails db:create
  rails migrate
  # rails db:seed
```

### Usage

To run the project, execute the following command:


```sh
  rails server
```

### Testing

To run the project tests, execute the following command:

```sh
  rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **George Hamman**

- GitHub: [@githubhandle](https://github.com/George7h)
- LinkedIn: <a href="https://www.linkedin.com/in/george-hamman-95b98224b/">George Hamman</a>
- 
👤 **Muhammad Umair Muqeem**

- GitHub: [@umair-rao](https://github.com/umair-rao)
- Twitter: [@umair_ra0](https://twitter.com/umair_ra0)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/engr-umair-muqeem/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Coming soon!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/George7h/Recipe-app/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project feel free to leave a star and/or follow me on Github.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank all my code reviewers for their time in reviewing my project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
