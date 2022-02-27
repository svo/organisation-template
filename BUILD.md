# Organisation Template

## Tested Development Environment

| Requirement | Version |
|--|--|
| Operating System | macOS Monterey 12.2.1 |
| Vagrant | 2.2.19 |
| VirtualBox | 6.1.32 r149290 (Qt5.6.3) |
| Ansible | 2.12.2 |

## Updating Resources

### Main Page

Using `GitHub` flavoured markdown, update the `README.md` in the same directory as this file.

### Structure Images

Update `.puml` files in the `environment` and `environment/structure` directories. Refer to the [PlantUML](https://plantuml.com/) documentation for instructions on how to update.

### Sensible Default Radar

Update the `engineering-radar.csv` and `architecture-radar.csv` to change the content in the [ThoughtWorks Radar](https://www.thoughtworks.com/radar/byor).

### Decision Register

To add decisions we recommend using [adr-tools](https://github.com/npryce/adr-tools). This will add formatted markdown documents in the `decisions` directory.

## Project Docker Images

If using the `Vagrant` configuration run the following:

```
vagrant up
vagrant ssh
cd /vagrant
```

We have been lazy and left some hard-coded naming in the configurations around the build artefacts. If you want to change things to reflect your organisation we recommend using your `fgrep` command-line friend:

```
fgrep --exclude-dir=infrastructure/ansible/files/html -rn organisation-template *
```

Then using your favourite text editor, update the references.

### Build

* This document and the decision register: `./bin/create-service`
* The engineering sensible defaults radar: `./bin/build-engineering-sensible-defaults-radar`
* The architecture sensible defaults radar: `./bin/build-architecture-sensible-defaults-radar`
* A Docker development environment alternative to `Vagrant` + `VirtualBox`: `./bin/create-development`
* An image to build the project: `./bin/create-buildnode`
