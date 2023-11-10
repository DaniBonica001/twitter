#!/bin/bash

sonar-scanner \
  -Dsonar.projectKey=DevOpsIcesi_twitter_AYu3KfMA2MNOnXF35LF4 \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:9000
