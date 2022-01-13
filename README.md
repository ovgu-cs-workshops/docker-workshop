# Container & Docker Workshop

This project contains interactive slides to teach the basics on Linux Containers. 
The content of this workshop is tailored towards beginners in container technology.

## Prerequisites

Participants for this workshop should have basic application development skills, 
as well as basic knowledge on how to use a command line.

## Contents

- Introduction / Why do we want to use containers?
- Basics / Anatomy of a Linux container
  - Isolation Levels of Containers
- OCI Standards on Containers
- Docker as an implementation example
  - HandsOn: Docker
- Developing an application with containers in mind
- Outlook: Orchestration / Production Usage

## Hacking on the presentation

This project is organized as a standard [Angular](https://angular.io) project. 
To work on it, you can use the following commands:

```sh
npm ci
npm start # will start a development server on port 4200
```

Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Deploying

The presentation is shipped as a container, which can be used in the runtime or orchestration software of your choice.
We support customizing the URLs that the participants can use to distribute workshop, by mounting a `config.json` file into the container at `/usr/share/nginx/html/config.json`.
