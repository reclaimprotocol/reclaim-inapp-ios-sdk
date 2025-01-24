#!/usr/bin/env bash

function check_framework() {
  local framework_name="$1"

  if [[ -z "$framework_name" ]]; then
    echo "Error: Framework name is empty."
    return 1
  fi

  local framework_path="$framework_name.xcframework/ios-arm64/$framework_name.framework/$framework_name"

  if [[ ! -x "$framework_path" ]]; then
    echo "Error: Executable '$framework_path' not found or not executable."
    return 1
  fi

  file "$framework_path"
}