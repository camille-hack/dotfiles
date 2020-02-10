# Print a message on the standard output, if the variable debug is true
debug()
{
	message="$1"

	[ $debug ] && printf "\e[33m%s\e[0m: %s\n" "debug" "$message"
}

# Print a message on the error output
warn()
{
	message="$1"

	printf "\e[43m%s\e[0m: %s\n" "warning" "$message" >&2
}

# Print a message on the error output and exit with 1
fail()
{
	message="$1"

	printf "\e[41m%s\e[0m: %s\n" "error" "$message" >&2
	exit 1
}
