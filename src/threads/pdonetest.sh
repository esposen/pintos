#!/bin/bash
make

rm build/tests/threads/priority-donate-one.result
make build/tests/threads/priority-donate-one.result

egrep 'PASS|FAIL' build/tests/threads/priority-d*.result

subl build/tests/threads/priority-donate-one.output