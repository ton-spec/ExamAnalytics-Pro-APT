#!/usr/bin/env bash
set -e
echo "Installing ExamAnalytics Pro..."
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://ton-spec.github.io/ExamAnalytics-Pro-APT/key.gpg \
| sudo tee /etc/apt/keyrings/examanalytics.gpg >/dev/null
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/examanalytics.gpg] https://ton-spec.github.io/ExamAnalytics-Pro-APT stable main" \
| sudo tee /etc/apt/sources.list.d/examanalytics.list >/dev/null
sudo apt update
sudo apt install -y examanalyticspro
echo
echo "✅ ExamAnalytics Pro installed successfully!"
