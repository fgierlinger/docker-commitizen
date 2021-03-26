# Docker: Commitlint

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