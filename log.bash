#! /usr/bin/env bash

function log::info() {
    local _green="\033[32m"
    local _normal="\033[0m"
    echo -e "${_green}INFO:${_normal} ${@}"
}

function log::warn() {
    local _green="\033[33m"
    local _normal="\033[0m"
    echo -e "${_green}WARN:${_normal} ${@}"
}

function log::error() {
    local _green="\033[31m"
    local _normal="\033[0m"
    echo -e "${_green}ERROR:${_normal} ${@}"
}

function log::prefix() {
  local _prefix="${1:-}"
  sed "s/^/$_prefix/"
}

function log::debug() {
    if [[ "${DEBUG}" == "true" || "${DEBUG}" == "log" ]]; then
        local _color="\033[33m"
        local _normal="\033[0m"
    echo -e "${_color}XXX: DEBUG:${_normal} ${@}"
    fi
}

