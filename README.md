# Terraform-Docs Action

A simple Action to basically push a generated docs commit to your PR branch pulling inputs and outputs into their own markdown template.

![typewriter and knick knacks on a wooden table](assets/typewriter-801921_1920.jpg)

## Book Keeping

[Code of Conduct](docs/CODE_OF_CONDUCT.md)

[License](docs/LICENSE)

## Installation

### HCL

Copy the [action/main.workflow](action/main.workflow) file into `.github/` in your repo and edit the Environment variables.

### Yaml

Copy the Copy the [action/beta.yaml](action/beta.yaml) file into `.github/workflows` in your repo and edit the Environment variables.

## Building your own docker image

If you want to run it off of a docker image you personally build you can build and push the container from the [`docker/`](docker/) configs and update the `uses` parameter to the docker URI of your registry.

If you wanted to just have it run like they say you can, for HCL you "should" be able to copy the [`docker/`](docker/) configs to `.github/docker` or for Yaml, you "should" be able to copy it to `.github/workflows/docker` and then change the `uses` parameter to `./docker` but this didn't work for me in testing.
