module org.k33g.transporter

# The MIT License (MIT)
# Copyright (c) 2013 Philippe CHARRIERE

struct transporter = { value }

augment org.k33g.transporter.types.transporter {
	function add = |this, n| -> this: value(this: value() + n)
	function substract = |this, n| -> this: value(this: value() - n)
	function multiply = |this, n| -> this: value(this: value() * n)
	function divide = |this, n| -> this: value(this: value() / n)
	function increment = |this| -> this: add(1)
	function decrement = |this| -> this: substract(1)
}

# have fun!
