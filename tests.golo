module module_name

import org.k33g.transporter

function main = |args| {

  # +++ initialisation +++
  let a = T(2) # this is an integer -> T(2.0) is a double
  let b = T(a)
  println("value of a : "+ a: value()) # value of a : 2
  println("value of b : "+ b: value()) # value of b : 2

  # +++ operations +++
  a: increment(): increment() # a: value() == 4
  a: decrement() # a: value() == 3
  a: multiply(5):divide(b) # a: value() == 3 * 5 / 2 -> 7 (Integer)

  println("value of a : " + a: value()) # value of a : 7

  # +++ conditions +++
  println(
   """
   a == 7 : %s, a == b : %s,
   a > 3 : %s, a >= T(3) : %s,
   a !> 3 : %s, a !>= 3 : %s,
   a < b : %s, a <= b : %s, a !< b : %s, a !<= b : %s   
   """:format(
       a: isEqual(7): toString()
     , a: isEqual(b): toString()
     , a: isGreater(3): toString()
     , a: isGreaterOrEqual(T(3)): toString()
     , a: isNotGreater(3): toString()
     , a: isNotGreaterOrEqual(3): toString()
     , a: isLess(b): toString()
     , a: isLessOrEqual(b): toString()
     , a: isNotLess(b): toString()
     , a: isNotLessOrEqual(b): toString()
   )
  )

  println(
    a: isEqual(b, |self|->"A == B", |self|->"A != B")
  ) # return "A != B"
  println(
    a: isEqual(b, |self|->"A == B")
  ) # return false

  let test = a: isGreater(b
    , |self| {
      println("a is greater than b!")
      return true
    }
    , |self| {
      println("b is greater than a!")
      return false
    }
  )
  println("test is " + test)
}
