#### Project: Data Explorer

#### Pass-ID: X9448776

#### Author: Atakan Çetinkaya

#### Created: 24.05.2023

#### Description: This .md (README.md) explains, what this PowerShell-Script exactly does

#### File Name: README.md

#### Version: v1.0

---

<!-- PROJECT SHIELDS -->

<a name="readme-top"></a>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/atakancetinkaya/github-how-to/blob/main/logo_by_a-cetinkaya.png">
    <img src="https://github.com/atakancetinkaya/github-how-to/blob/main/logo_by_a-cetinkaya.png" alt="Logo" width="250" height="250">
  </a>

  <h3 align="center">My Github Guide</h3>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">My GitHub Content</a>
      <ul>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

---

## My GitHub Content

This .md (README.md) explains, how to create git Repo and use the git commands.

Use the `README.md` to get started.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

This is an example of how you may give instructions on setting up your local GitHub Repo and use git commands:

---

1.0) Create the Directory "github_kkvbl" inside of "Compel/customers/work/kkvbl/" Directories:

```sh
mkdir Compel/customers/work/kkvbl/<github_kkvbl>
```

---

1.1) Folder structure of an example GitHub Repository where you want to creat it:

```sh
cd Compel/customers/work/kkvbl/github_kkvbl
```

---

1.2) Now that you are inside of the Repo (github_kkvbl), do a clone into the "github" Repository:

```sh
git clone <GITHUB SSH "CLONE" LINK>
```

---

1.3) As next, you are still inside of the "github_kkvbl" Folder enter now the cloned Repository:

```sh
cd <WHAT EVER THE NAME OF YOUR GITHUB REPOSITORY IS>
```

---

1.4) Now add manually the Files you want to "Push" over the "UI" or "Terminal" into the cloned Repo:

```sh
<Over drag and drop into the Cloned Repository / Or with the "mv" command through the Terminal>
```

---

1.5) With this command you will be able to see all modified, deleted or added new files:

```sh
git status
```

---

1.6) With "git status" you could see what is updated, but now do a "git add ." adding all Files:

```sh
git add .
```

---

1.7) Through the command "git commit -m "text" you can create an commit text before your "Push":

```sh
git commit -m "EXAMPLE TEXT IN HERE"
```

---

1.8) After doing your commitment, you should be able to do an "Push" to upload all Files on the Repo:

```sh
git push
```

---

1.9) The Folder "step_v1_8_github_repo_guide" shows you the exact executed commands on the Shell:

<a href="https://github.com/atakancetinkaya/github-how-to/blob/main/step_v1_8_github_repo_guide/step_v1_8_github_repo_guide.pdf">step_v1_8_github_repo_guide</a>

---

LEGEND:

< > = Those are symbols to <REFERE> to something.

---

## Troubleshooting Git command's

1.0) This command will replay your local commits on top of the remote branch, which will result in a linear history.

```sh
git pull --rebase
```

1.1) This command is like the same above, the only difference is the authentication flag, which is used for the command at "1.0)"

```sh
git config pull.rebase true
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- USAGE EXAMPLES -->

## Usage

- This can be seen as the step "1.8)" which is at "Getting Started" Chapter

<img src="https://github.com/atakancetinkaya/github-how-to/blob/main/timestamp_ss/Screenshot%202023-05-10%20at%2010.57.20.png" alt="SS-1">

<img src="https://github.com/atakancetinkaya/github-how-to/blob/main/timestamp_ss/Screenshot%202023-05-10%20at%2010.57.39.png" alt="SS-2">

<img src="https://github.com/atakancetinkaya/github-how-to/blob/main/timestamp_ss/Screenshot%202023-05-10%20at%2010.58.22.png" alt="SS-3">

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Your Name - [LinkedIn](https://www.linkedin.com/in/atakan-%C3%A7etinkaya-28a34b226/) - atakan.cetinkaya01@gmail.com

Project Link: [https://github.com/atakancetinkaya/data-explorer](https://github.com/atakancetinkaya/data-explorer)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

On this space you will find a list of resources which can be helpful.

- [README.md](https://docs.github.com/en/repositories/managing-your-repositorys-settings-and-features/customizing-your-repository/about-readmes)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
