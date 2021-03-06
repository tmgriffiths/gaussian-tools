#!/usr/bin/env zsh
set  -f
#
#
# electronic energy after SDF Done
#

function g09-electronic-energy-after-SDF-is-done()
{
	local data=$(awk '/SCF Done:/ { result = $5 } END {print result}' "${1}")

	${GAUSSIAN_TOOLS_DIRECTORY:-$HOME/bin}/g09-data-test.zsh $data
}

g09-electronic-energy-after-SDF-is-done "${1}"


