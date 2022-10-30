import os { input }
import term
import menu
import operations

/**
 * Main function
*/
fn main() {
	mut play := true
	term.clear()

	// Play more times
	for play {
		mut choose := menu.show()

		// Play the game
		term.clear()
		operations.session(choose)!

		// Continue playing?
		rec := input('Keep gaming? (y or n): ')
		term.clear()

		if rec == 'y' {
			println('The game will continue...')
		 } else {
		 	println('End of the game...')
		 	play = false
		 }
	}
}
