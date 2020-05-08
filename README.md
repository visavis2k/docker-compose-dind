# docker-compose-dind

visavis2k/docker-compose-dind is image that should be used to build projects with docker-compose based workflow in GitLab CI.

.example .gitlab-ci.yml
```
stages:
  - package

docker-build:
  image: visavis2k/docker-compose-dind:19.03.8
  stage: package
  services:
    - docker:19.03.8-dind
  before_script:
    - docker-compose version
  script:
    - docker-compose build

