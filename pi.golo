module pi 

import org.k33g.transporter

function calculatePi = |precision| {
  
  let increment2 = T(2.0)
  let resultat = T(1.0)
  let increment = T(1.0)

  while(increment: isLessOrEqual(precision) ) {

    resultat: multiply( T(increment2): divide(increment) )
    
    increment: isEqual( T(increment2): add(1.0), |self| {
      increment2: add(2.0)
      increment: substract(2.0)
    })

    increment: add(2.0)
  }
  return resultat: multiply(2): value()
}

function main = |args| {
  let precision = T(1.0)  

  9:times({
    let start = java.lang.System.currentTimeMillis()
    println(
      "# %s : %s -> %s ms":format(
          precision: to_String()
        , calculatePi(precision):toString()
        , (java.lang.System.currentTimeMillis() - start):toString()
      )
    )
    precision:multiply(10.0)
  })
# 1.0 : 4.0 -> 10 ms
# 10.0 : 3.302393550012597 -> 4 ms
# 100.0 : 3.157339689217563 -> 11 ms
# 1000.0 : 3.143163842419187 -> 17 ms
# 10000.0 : 3.1417497371492233 -> 56 ms
# 100000.0 : 3.1416083615920956 -> 53 ms
# 1000000.0 : 3.1415942243859956 -> 41 ms
# 1.0E7 : 3.1415928106682633 -> 200 ms
# 1.0E8 : 3.1415926692944294 -> 1188 ms

}



