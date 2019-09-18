**Házi feladat 2.**

Határidő: szeptember 24. (kedd) 23:59
A függgvények definíciója előtt ne felejtsd el megadni azok típuasit!

**Feladat 1**

Adjunk meg a *fracAdd* kétparaméteres függvény defincícióját, mely két tuple-t (rendezett párt) vár bemenetként!
A rendezett párok egy-egy törtet jelölnek a tuple első tagja a tört számlálója, a második tagja a nevezője. A *fracAdd* függvény a törtek összegével tér vissza hasonló tuple-ként.

Tesztesetek:

            fracAdd (1, 2) (2, 3) == (7, 6)
            fracAdd (1, 2) (3, 2) == (8, 4)
            fracAdd (3, 4) (7, 9) == (55, 36)

**Feladat 2**

Definiáld a másodfokú egyenleteket megoldó függvényt!
Feltesszük, hogy van két valós gyök.

Az x^2 − 6x + 8 = 0 megoldása:

            quadratic 1.0 (-6.0) 8.0 == (2.0, 4.0)

Tesztesetek:

            quadratic 1.0 (-6.0) 8.0 == (2.0, 4.0)
            quadratic 1 (-8) 16 == (4.0, 4.0)
            quadratic 1 (-8) 12 == (2.0, 6.0)

