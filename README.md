# DesigningACompiler
Basic compiler that is able to respond to arithmetic, logical and relational expressions. 

Projenin Kapsamı
Bu compiler tam sayılar arasında aritmetik, mantıksal ve ilişkisel işlemler yapar. Değildir (!) işlemi dışındaki tüm işlemler soldan sağa doğru yazılır. Parantez içlerinin işlem önceliği vardır. Toplama veya çıkartma işlemi yapılırken ikinci ifade pozitifse +/-(1) negatifse +/-(-1) şeklinde yazılması gerekir. Mantıksal ve ilişkisel işlemlerin cevabı TRUE veya FALSE olarak döndürülür. Mantıksal işlemlerde 1 veya 0’dan başka değer girildiğinde,  0’a bölünme işlemi yapıldığında veya gramere uymayan bir yapıyla işlem yapılmaya çalışıldığında geçersiz ifade hatası verilir.

