import os { input }
import term
import menu
import operations

/**
 * Main function
*/
fn main() {
	mut play := true

	// First game
	term.clear()
	mut choose := menu.show()
	println(choose)
	println(operations.sum(1, 4))

	// Play more times
	for play {
		rec := input('Keep gaming? (y or n): ')
		match rec {
			'y' {
				term.clear()
				println('The game will continue...')
				choose = menu.show()
				println(choose)
			}
			else {
				term.clear()
				println('End of the game...')
				play = false
			}
		}
	}
}
