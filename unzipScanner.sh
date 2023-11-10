#!/bin/bash
export SONAR_SCANNER_VERSION=5.0.1.3006
export SONAR_SCANNER_HOME=$HOME/.sonar/sonar-scanner-$SONAR_SCANNER_VERSION-linux

# Download Sonar Scanner
curl --create-dirs -sSLo $HOME/.sonar/sonar-scanner.zip https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-$SONAR_SCANNER_VERSION-linux.zip

# Unzip Sonar Scanner
unzip -o $HOME/.sonar/sonar-scanner.zip -d $HOME/.sonar/

# Add Sonar Scanner to PATH
export PATH=$SONAR_SCANNER_HOME/bin:$PATH

# Set Sonar Scanner options
export SONAR_SCANNER_OPTS="-server"