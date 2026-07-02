#!/usr/bin/env sh
set -eu

BASE_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
MVN_VERSION=3.9.9
MVN_DIR="$BASE_DIR/.mvn/apache-maven-$MVN_VERSION"
MVN_BIN="$MVN_DIR/bin/mvn"
ARCHIVE="$BASE_DIR/.mvn/apache-maven-$MVN_VERSION-bin.zip"
DIST_URL="https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/$MVN_VERSION/apache-maven-$MVN_VERSION-bin.zip"

if [ ! -x "$MVN_BIN" ]; then
  mkdir -p "$BASE_DIR/.mvn"
  if [ ! -f "$ARCHIVE" ]; then
    if command -v curl >/dev/null 2>&1; then
      curl -fsSL "$DIST_URL" -o "$ARCHIVE"
    elif command -v wget >/dev/null 2>&1; then
      wget -q "$DIST_URL" -O "$ARCHIVE"
    else
      echo "curl or wget is required to download Maven." >&2
      exit 1
    fi
  fi
  if command -v unzip >/dev/null 2>&1; then
    unzip -q "$ARCHIVE" -d "$BASE_DIR/.mvn"
  else
    echo "unzip is required to extract Maven." >&2
    exit 1
  fi
fi

exec "$MVN_BIN" "$@"
