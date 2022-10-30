module menu

import os { input }


/**
 * Show the options menu
*/
pub fn show() int {
	opts := [
		'1 - Summation',
		'2 - Subtractrion',
		'3 - Multiplication',
		'4 - Division (not implemented)',
		'5 - Exit'
	]

	// Pick and option
	for opt in opts {
		println(opt)
	}
	return input('Type a number: ').int()
}

