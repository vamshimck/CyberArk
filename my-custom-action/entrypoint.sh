#!/bin/bash
# Conjur Secret Retrieval for GitHub Action conjur-action

jobs:
  read-secrets:
    runs-on: self-hosted
    steps:
      - name: Read Secrets From Conjur
        run: |
          echo "Reading Secrets From Conjur"
          export TOKEN=$(curl -k --header "Content-Type: text/plain" --header "Accept-Encoding: base64" --request POST "https://mckesson.secretsmgr.cyberark.cloud/aauthn-jwt/github/conjur/authenticate")
          echo "Here is the access token"
          echo "${TOKEN}"
        env:
          # You can add environment variables here if needed
          # For example, to use GitHub Secrets:
          # CONJUR_URL: ${{ secrets.CONJUR_URL }}
          # CONJUR_AUTH: ${{ secrets.CONJUR_AUTH }}