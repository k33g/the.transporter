the.transporter
===============

##Why?

Because references through closures are constant references (and it's good)

##How to?

```coffeescript
module try_the_transporter

import org.k33g.transporter

augment java.util.LinkedList {
  function sum = |this| {		
    let sum = transporter(0)
	this:each(|item| -> sum:value(sum:value()+item) )
    return sum:value() 
  }		
}

function main = |args| {
  println(
    list[1,2,3,4,5]:sum()
  )
}

```

Run it : `golo golo --files the.transporter.golo main.golo`
