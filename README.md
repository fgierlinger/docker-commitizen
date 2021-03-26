# Docker: Commitlint

[![CI](https://github.com/fgierlinger/docker-commitizen/actions/workflows/ci.yml/badge.svg?branch=master)](https://github.com/fgierlinger/docker-commitizen/actions/workflows/ci.yml) [![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)

Provides a docker container for aarch64 with commitizen.

## Usage

Used to verify if commit messages are according to the [Conventional Commit
Specification](https://www.conventionalcommits.org/en/v1.0.0/) in a CI pipeline.

### Commandline
  $ podman run --rm -ti \
      fgierlinger/commitizen:latest "feat: proper formate message"

### Drone.io
Example pipeline for drone.io

  ---
  kind: pipeline type: docker name: commitizen

  steps:
    - name: commitizen
      image: fgierlinger/commitizen
      commands:
        - cz check -m "$DRONE_COMMIT_MESSAGE"

If you are using Github you might be better of with the Github App _Semantic
Pull Request_: https://github.com/apps/semantic-pull-requests

## License
MIT