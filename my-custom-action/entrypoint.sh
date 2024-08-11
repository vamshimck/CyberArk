#!/bin/bash
# Conjur Secret Retrieval for GitHub Action conjur-action

stages:
  - read-secrets
  - build
  - test
  - deploy

read-secrets:
  tags:
    - jwt
  stage: read-secrets
  script:
  - echo " Reading Secrets From Conjur"
  - 'export TOKEN=$(curl -k --header "Content-Type: text/plain" --header "Accept-Encoding: base64" --request POST "https://mckesson.secretsmgr.cyberark.cloud/aauthn-jwt/github/conjur/authenticate")'
  - echo "Here is the access token"
  - echo {TOKEN}