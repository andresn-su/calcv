import os { input }

/**
 * Show the options menu
*/
fn menu() int {
	opts := [
		'1 - Summation',
		'2 - Subtractrion',
		'3 - Multiplication',
		'4 - Division'
	]

	// Pick and option
	for opt in opts {
		println(opt)
	}
	return input('Type a number: ').int()
}

/**
 * Main function
*/
fn main() {
	mut play := true
	
	for play {
		rec := input('Keep gaming? (y or n): ')
		match rec {
			'y' {
				println('The game will continue...')
				choose := menu()
				println(choose)
			}
			else {
				println('End of the game...')
				play = false
			}
		}
	}
}
