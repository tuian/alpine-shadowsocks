#!/usr/bin/env bats

@test "run container with parameters" {
  run docker run -p 8080:8080 -d alpine-shadowsocks -s 0.0.0.0 -p 8080 -k password -m aes-256-cfb
  [ $status -eq 0 ]
  [ "${#lines[@]}" -eq 2 ]
  [ $(expr "${lines[1]}" : ".*starting server at 0.0.0.0:8080") -eq 0 ]
}
