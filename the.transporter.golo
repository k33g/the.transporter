module org.k33g.transporter

# The MIT License (MIT)
# Copyright (c) 2013 Philippe CHARRIERE

struct transporter = { value }

augment org.k33g.transporter.types.transporter {

	function to_s = |this| -> this: value(): toString()

	function add = |this, n| {
		if n oftype org.k33g.transporter.types.transporter.class {
			this: value(this: value() + n: value())
		} else {
			this: value(this: value() + n)
		}
		return this
	}
	function substract = |this, n| {
		if n oftype org.k33g.transporter.types.transporter.class {
			this: value(this: value() - n: value()) 
		} else {
			this: value(this: value() - n) 
		}
		return this		
	}
	function multiply = |this, n| {
		if n oftype org.k33g.transporter.types.transporter.class {
			this: value(this: value() * n: value())
		} else {
			this: value(this: value() * n)
		}
		return this				
	}
	function divide = |this, n| {
		if n oftype org.k33g.transporter.types.transporter.class {
			this: value(this: value() / n: value())
		} else {
			this: value(this: value() / n) 
		}		
		return this	
	}
	
	function increment = |this| -> this: add(1)
	function decrement = |this| -> this: substract(1)

	# === Tests ===

	function isEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() == t: value()
		} else {
			return this: value() == t
		}				
	}
	function isEqual = |this, t, if_true| {if this:isEqual(t) { return if_true(this) } else { return false }} 
	function isEqual = |this, t, if_true, if_false| {if this:isEqual(t) { return if_true(this) } else { return if_false(this) }} 
	
	function isNotEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() != t: value()
		} else {
			return this: value() != t
		}				
	}	
	function isNotEqual = |this, t, if_true| {if this:isNotEqual(t) { return if_true(this) } else { return false }} 
	function isNotEqual = |this, t, if_true, if_false| {if this:isNotEqual(t) { return if_true(this) } else { return if_false(this) }} 

	function isGreater = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() > t: value()
		} else {
			return this: value() > t
		}				
	}		
	function isGreater = |this, t, if_true| {if this:isGreater(t) { return if_true(this) } else { return false }} 
	function isGreater = |this, t, if_true, if_false| {if this:isGreater(t) { return if_true(this) } else { return if_false(this) }} 

	function isNotGreater = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() < t: value()
		} else {
			return this: value() < t
		}				
	}			
	function isNotGreater = |this, t, if_true| {if this:isNotGreater(t) { return if_true(this) } else { return false }} 
	function isNotGreater = |this, t, if_true, if_false| {if this:isNotGreater(t) { return if_true(this) } else { return if_false(this) }} 

	function isGreaterOrEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() >= t: value()
		} else {
			return this: value() >= t
		}				
	}				
	function isGreaterOrEqual = |this, t, if_true| {if this:isGreaterOrEqual(t) { return if_true(this) } else { return false }} 
	function isGreaterOrEqual = |this, t, if_true, if_false| {if this:isGreaterOrEqual(t) { return if_true(this) } else { return if_false(this) }} 

	function isNotGreaterOrEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() <= t: value()
		} else {
			return this: value() <= t
		}				
	}					
	function isNotGreaterOrEqual = |this, t, if_true| {if this:isNotGreaterOrEqual(t) { return if_true(this) } else { return false }} 
	function isNotGreaterOrEqual = |this, t, if_true, if_false| {if this:isNotGreaterOrEqual(t) { return if_true(this) } else { return if_false(this) }} 

	function isLess = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() < t: value()
		} else {
			return this: value() < t
		}				
	}			
	function isLess = |this, t, if_true| {if this:isLess(t) { return if_true(this) } else { return false }} 
	function isLess = |this, t, if_true, if_false| {if this:isLess(t) { return if_true(this) } else { return if_false(this) }} 

	function isNotLess = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() > t: value()
		} else {
			return this: value() > t
		}				
	}				
	function isNotLess = |this, t, if_true| {if this:isNotLess(t) { return if_true(this) } else { return false }} 
	function isNotLess = |this, t, if_true, if_false| {if this:isNotLess(t) { return if_true(this) } else { return if_false(this) }} 

	function isLessOrEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() <= t: value()
		} else {
			return this: value() <= t
		}				
	}				
	function isLessOrEqual = |this, t, if_true| {if this:isLessOrEqual(t) { return if_true(this) } else { return false }} 
	function isLessOrEqual = |this, t, if_true, if_false| {if this:isLessOrEqual(t) { return if_true(this) } else { return if_false(this) }} 

	function isNotLessOrEqual = |this, t| {
		if t oftype org.k33g.transporter.types.transporter.class {
			return this: value() >= t: value()
		} else {
			return this: value() >= t
		}				
	}					
	function isNotLessOrEqual = |this, t, if_true| {if this:isNotLessOrEqual(t) { return if_true(this) } else { return false }} 
	function isNotLessOrEqual = |this, t, if_true, if_false| {if this:isNotLessOrEqual(t) { return if_true(this) } else { return if_false(this) }} 

	# === TODO: === Transaction with semaphores ?
	#
	# T(56):start():add(45):multiply(12):end()

}

function T = |value| {
	if value oftype org.k33g.transporter.types.transporter.class {
		return transporter(value: value())
	} else {
		return transporter(value)
	}				
} 

# have fun!


function main = |args| {
	println("" +
		T(4):isEqual(T(5),|self|{
			println("It's true")
			return true
		},|self|{
			println("It's false")
			return false
		})
	)

	println("" +
		T(5):isEqual(T(5),|self|{
			println("It's true")
			return true
		})
	)	

	println("" +
		T(5):isEqual(5,|self|{
			println("It's true")
			return true
		})
	)		
}