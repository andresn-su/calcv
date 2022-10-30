module operations

pub fn sum(a int, b int) int {
	return a + b
}

pub fn sub(a int, b int) int {
	return a - b
}

pub fn mult(a int, b int) int {
	return a * b
}

pub fn div(a int, b int) f32 {
	return f32(a) / b
}

/**
 * A loop with the problems
*/
pub fn session(max int, min int, kind int) {
	println(max)
	println(min)
	println(kind)
}
