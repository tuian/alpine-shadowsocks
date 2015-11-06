#!/usr/bin/env bats

@test "installed JDK package" {
  run docker run -p 8080:8080 -d alpine-shadowsocks -s 0.0.0.0 -p 8080 -k password -m aes-256-cfb
  [ $status -eq 0 ]
}
