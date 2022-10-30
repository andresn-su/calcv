import os { input }
import term
import menu
import operations

/**
 * Main function
*/
fn main() {
	mut play := true

	// Play more times
	for play {
		mut choose := menu.show()

		// Play the game
		println(choose)
		println(operations.sum(1, 4))
		operations.session(1, 8, 2)

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
