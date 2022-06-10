#!/usr/bin/env bash
# https://raw.githubusercontent.com/CodelyTV/check-critical-files/master/src/github_actions.sh

github_actions::get_pr_number() {
  jq --raw-output .pull_request.number "$GITHUB_EVENT_PATH"
}

github_actions::commit_sha() {
  jq --raw-output .after "$GITHUB_EVENT_PATH"
}

github_actions::print_all_data() {
  cat "$GITHUB_EVENT_PATH"
}