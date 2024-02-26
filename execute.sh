params=()
if [[ -n "${FILE}" ]]; then
	params+=('--file')
	params+=("${FILE}")
fi
if [[ -n "${PRESET}" ]]; then
	params+=('--preset')
	params+=("${PRESET}")
fi
if [[ -n "${ENABLE}" ]]; then
	params+=('--enable')
	params+=("${ENABLE}")
fi
if [[ -n "${DISABLE}" ]]; then
	params+=('--disable')
	params+=("${DISABLE}")
fi
if [[ -n "${TYPE}" ]]; then
	params+=('--type')
	params+=("${TYPE}")
fi
./debian-control-linter "${params[@]}"