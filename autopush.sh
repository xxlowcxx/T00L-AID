#!/data/data/com.termux/files/usr/bin/bash

# Decrypt token from encrypted vault
export GITHUB_TOKEN=$(openssl enc -aes-256-cbc -d -pbkdf2 -base64 -in ~/github_token.enc)

cd ~/T00L-AID

git add .
git commit -m "T00L-AID auto-push $(date)"
git push https://$GITHUB_TOKEN@github.com/xxlowcxx/T00L-AID.git HEAD:main
