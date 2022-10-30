module operations

import os { input }
import rand

fn sum(a int, b int) int {
	return a + b
}

fn sub(a int, b int) int {
	return a - b
}

fn mult(a int, b int) int {
	return a * b
}

fn div(a int, b int) f32 {
	return f32(a) / b
}

/**
 * Evaluates the user answer
*/
fn eval(res int, kind int, a int, b int) bool {
	match kind {
		1 {
			return res == sum(a, b)
		}
		2 {
			return res == sub(a, b)
		}
		3 {
			return res == mult(a, b)
		}
		else {
			return false
		}
	}
}

/**
 * A loop with the problems
*/
fn loop(max int, min int, kind int, symbol string) !int {
	for i in 1..11 {
		// Generate the values
		v1 := rand.int_in_range(max + 1, min)!
		v2 := rand.int_in_range(max + 1, min)!

		// Print to the user and eval the result
		res := input('$i) $v1 $symbol $v2 = ').int()
		println(if eval(res, kind, v1, v2) 
			{ 'Correct!' } else { 'Wrong :/' })
	}
	return 0
}
	
/**
 * Show the problems
*/
pub fn session(kind int) !int {
	symbols := ['+', '-', '*', '/']

	// The extreme values
	mut min := input('Type the minimum value: ')
	mut max := input('Type the maximum value: ')
	
	match kind {
		1, 2, 3 {
			loop(min.int(), max.int(), kind, symbols[kind - 1])!
		}
		else { println('invalid option.') }
	}
	return 0
}
