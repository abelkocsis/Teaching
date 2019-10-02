**Házi feladat 4.**

Határidő: október 8. (kedd) 23:59

A függgvények definíciója előtt ne felejtsd el megadni azok típusait!

**Feladat 1**

Írj egy olyan *isSecondTwo* függvényt, mely számokból álló listát vár paraméterként, és ha a lista második eleme 2, kitörli ezt az elemet, egyébként a teljes listával tér vissza. Segítség: a függvényt kizárólag 0, 1, 2, vagy 3 elemű listákra hívjuk meg.

Tesztesetek:

            isSecondTwo [] == []
            isSecondTwo [12] == [12]
            isSecondTwo [24, 2] == [24]
            isSecondTwo [21, 43] == [21, 43]
            isSecondTwo [1, 2, 4] == [1, 4]
            isSecondTwo [1, 7, 4] == [1, 7, 4]

**Feladat 2**

Írj egy *doubleFirst* függvényt, mely Integer számokból álló listát vár paraméterként, és megduplázza az első elemet, a többit pedig változatlanul hagyja.

Tesztesetek:

            doubleFirst [] == []
            doubleFirst [0, 2, 4] == [0, 2, 4]
            doubleFirst [24, 6, 7] == [48, 6, 7]
            doubleFirst [7, 8] == [14, 8]
            doubleFirst [4,7,2,3,0,3,6,7,2,0,2,5,5,5,2,3,2,4] == [8,7,2,3,0,3,6,7,2,0,2,5,5,5,2,3,2,4]


**Feladat 3**

Definiálj egy *addProductAndSumFirst* függvényt, mely két Integer listát vár paraméterként. Az elsőhöz hozzáadja első elemként az első lista elemeinek szorzatát, a másodikhoz (ugyancsak első elemnek) pedig a második lista összegét, majd összefűzi a két eredménylistát!

Tesztesetek:

            addProductAndSumFirst [1] [3] == [1,1,3,3]
            addProductAndSumFirst [1,2] [3, 4] == [2,1,2,7,3,4]
            addProductAndSumFirst [1,2,7] [3,4,9] == [14,1,2,7,16,3,4,9]
            addProductAndSumFirst [1,2,7,1] [3,4,9,2] == [14,1,2,7,1,18,3,4,9,2]









