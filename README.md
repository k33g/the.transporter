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
		this:each(|item| -> sum:add(item) )
	    return sum:value() 
	  }		
}

function main = |args| {
  println(
    list[1,2,3,4,5]:sum()
  )
}
```

Run it : `golo golo --files the.transporter.golo sample.golo`

![Alt Jason_Statham](http://ia.media-imdb.com/images/M/MV5BMTk2NDc2MDAxN15BMl5BanBnXkFtZTYwNDc1NDY2._V1_SY317_CR3,0,214,317_.jpg)
