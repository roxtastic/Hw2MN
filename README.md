## Tololoi Ilinca-Roxana ##
## 311CB ##
## MN - Tema 2 ##

## Task 1 ##
## - functia apply_reverb ##
    Functia apply_reverb aplica un efect de reverberatie unui semnal audio utilizand raspunsul impulsului (IR). Mai intai, verificam daca raspunsul impulsului este mono si, daca nu este, il converteste in mono. Apoi, calculam convolutia intre semnalul de intrare si raspunsul impulsului folosind functia fftconv. Dupa aceea, normalizam semnalul rezultat pentru a se asigura ca valorile sale sunt intre -1 si 1.

    Functia fftconv realizeaza convolutia intre doua semnale folosind Transformata Fourier Rapida (FFT). Aceasta calculeaza lungimea totala necesara pentru convolutie, efectueaza FFT pe semnalele de intrare, le inmulteste in domeniul frecventei si apoi aplica transformata Fourier inversa (IFFT) pentru a obtine semnalul convoluat inapoi in domeniul timp.

## - functia stereo_to_mono ## 
    Functia stereo_to_mono converteste un semnal audio stereo intr-un semnal mono.

    Mai intai, calculez media semnalului pe a doua dimensiune (canalele stereo) pentru a combina cele doua canale intr-un singur canal mono, utilizand functia mean(signal, 2), care calculeaza media valorilor de-a lungul fiecarui rand (dimensiunea 2 fiind cea a canalelor).

    Dupa, normalizez semnalul mono rezultat astfel incat valorile sa fie cuprinse intre -1 si 1. Aceasta se face impartind semnalul mono la valoarea absoluta maxima a acestuia (mono / max(abs(mono))), asigurandu-se ca amplitudinea maxima este 1.

## Task 2 ## 
## - functia P_spline ##
    Functia calculeaza valorile interpolate ale unui spline cubic pentru punctele din x_interp folosind coeficientii coef si nodurile x. 

    Mai intai, determin numarul de intervale dintre noduri. Pentru fiecare interval, gasesc punctele din x_interp care se afla in intervalul curent, calculez diferenta dintre aceste puncte si inceputul intervalului, si folosesc coeficientii corespunzatori pentru a evalua spline-ul cubic in acele puncte.
    
    Rezultatul este o matrice y_interp care contine valorile interpolate ale spline-ului la punctele specificate in x_interp.

## - functia P_vandermonde ##
    Functia calculeaza valorile interpolate ale unui polinom in punctele din x_interp folosind coeficientii coef ai polinomului. Pentru fiecare punct din x_interp, parcurg fiecare coeficient al polinomului si se foloseste formula de interpolare polinomiala pentru a calcula valoarea polinomului in acel punct. Rezultatul este un vector y_interp care contine valorile interpolate ale polinomului la punctele specificate in x_interp.

## - functia parse_data ##
    Functia parse_data deschide un fisier specificat si citeste coordonatele (x, y) ale unui set de puncte. Inainte de a inchide fisierul, transform coordonatele citite in vectori coloana. Apoi, returnez acesti vectori x si y, reprezentand coordonatele punctelor.

## - functia plot_spline ##
    Functia primeste coordonatele x si y ale unui set de puncte, impreuna cu numarul de puncte pentru plotare. Calculeaza coeficientii polinomului spline si apoi evalueaza spline-ul in punctele de plotare. Foloseste apoi functia plot pentru a reprezenta curba spline si punctele originale intr-un grafic. Eticheteaza axele si adauga un titlu, iar fundalul graficului este setat la gri. Se activeaza si grila pentru a ajuta la vizualizare.

## - functia plot_vandermonde ##
    Functia plot_vandermonde primeste coordonatele x si y ale unui set de puncte, impreuna cu numarul de puncte pentru plotare. Calculez coeficientii polinomului Vandermonde si apoi evaluez polinomul in punctele de plotare. Dupa, utilizez functia plot pentru a reprezenta curba polinomiala si punctele originale intr-un grafic. Axele sunt etichetate, iar titlul graficului este setat. De asemenea, fundalul graficului este colorat gri, iar grila este activata pentru a ajuta la vizualizare.

## - functia spline_c2 ##
    Functia spline_c2 calculeaza coeficientii pentru un spline cubic cu derivate de ordinul doi continue. Initializeaza matricea si vectorul necesare pentru a rezolva sistemul de ecuatii. Apoi, completeaza aceste structuri de date cu valorile corespunzatoare. Pentru a asigura continuitatea derivatelor de ordinul doi, se impun conditii de frontiera adecvate. Ulterior, calculeaza coeficientii necesari pentru spline, inclusiv coeficientii b si d care determina comportamentul spline-ului intre punctele de control. Rezultatul este o matrice de coeficienti, corespunzator spline-ului cubic.

## - functia vandermonde ##
    Functia vandermonde primeste coordonatele x si y ale unui set de puncte si calculeaza coeficientii polinomului interpolator folosind metoda Vandermonde. Initializez si completez matricea Vandermonde folosind puterile crescatoare ale coordonatelor x. Apoi, rezolv sistemul de ecuatii liniare pentru a obtine coeficientii polinomului. Rezultatul este un vector de coeficienti.

## Task 3 ##
## - functia cosine_similarity ##
    Functia calculeaza similaritatea cosinus intre doi vectori, A si B. Similaritatea cosinus este definita ca produsul scalar al vectorilor impartit la produsul normelor lor. Valoarea returnata este cuprinsa intre -1 si 1, unde 1 indica vectori identici, 0 indica vectori ortogonali (fara nicio similaritate), si -1 indica vectori opusi.

## - functia preprocess ##
    Functia elimina clientii din matricea A care au mai putin de min_count recenzii. Mai intai, calculez numarul de recenzii pentru fiecare client, considerand valorile nenule din fiecare rand al matricei. Apoi, elimin randurile corespunzatoare clientilor care nu indeplinesc criteriul minim de recenzii.