#!/bin/bash
make clear
make

rm build/tests/threads/alarm-zero.result
rm build/tests/threads/alarm-single.results
rm build/tests/threads/alarm-multiple.result
rm build/tests/threads/alarm-negative.result
rm build/tests/threads/alarm-simultaneous.result
rm build/tests/threads/alarm-priority.result

make build/tests/threads/alarm-zero.result
make build/tests/threads/alarm-single.result
make build/tests/threads/alarm-multiple.result
make build/tests/threads/alarm-negative.result
make build/tests/threads/alarm-simultaneous.result
make build/tests/threads/alarm-priority.result

egrep 'PASS|FAIL' build/tests/threads/al*.result
