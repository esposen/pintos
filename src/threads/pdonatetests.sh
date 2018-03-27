#!/bin/bash
make

rm build/tests/threads/priority-donate-one.result
rm build/tests/threads/priority-donate-multiple.result
rm build/tests/threads/priority-donate-multiple2.result
rm build/tests/threads/priority-donate-nest.result
rm build/tests/threads/priority-donate-sema.result
rm build/tests/threads/priority-donate-lower.result
rm build/tests/threads/priority-donate-chain.result

make build/tests/threads/priority-donate-one.result
make build/tests/threads/priority-donate-multiple.result
make build/tests/threads/priority-donate-multiple2.result
make build/tests/threads/priority-donate-nest.result
make build/tests/threads/priority-donate-sema.result
make build/tests/threads/priority-donate-lower.result
make build/tests/threads/priority-donate-chain.result

egrep 'PASS|FAIL' build/tests/threads/priority-d*.result