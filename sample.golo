module try_the_transporter

import org.k33g.transporter

augment java.util.LinkedList {
  function sum = |this| {		
    let sum = T(0)
		this:each(|item| -> sum:add(item) )
	    return sum:value() 
	  }		
}

function main = |args| {
  println(
    list[1,2,3,4,5]:sum()
  )

  println(
  	T(5):isEqual(T(5))
  )
  println(
  	T(5):isNotEqual(T(5))
  )
  println(
  	T(4):isNotEqual(T(5))
  )  

  println("Greater : 4 > 5 : " +
  	T(4):isGreater(T(5))
  )  

  println("Greater : not (4 > 5) : " +
  	T(4):isNotGreater(T(5))
  )  

  println("Less or Equal : 4 <= 5 : " +
  	T(4):isLessOrEqual(T(5))
  )  

  println("Less or Equal : 5 <= 5 : " +
  	T(5):isLessOrEqual(T(5))
  )  

}