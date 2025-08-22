# Tema 2 MN

> **Autor**: Trifan Bogdan-Cristian (312 CD)

Acest proiect abordează metode numerice fundamentale pentru procesarea imaginilor,
punând accent pe **compresie** și **recunoaștere de pattern-uri**.
Prin implementarea algoritmilor pe imagini alb-negru și pe **setul de date `MNIST`**,
am explorat atât fundamente teoretice (`SVD`, `PCA`),
cât și aplicații practice (clasificarea cifrelor scrise de mână).


## Task 1 – Compresia imaginilor cu SVD

Am implementat compresia unei imagini prin **descompunerea valorilor singulare** (`SVD`).

Pași:
1. se calculează factorizarea \( A = U S V^T \),
2. se păstrează doar primii *k* vectori și valori singulare,
3. se reconstruiește matricea aproximativă \( A_k \).  

**Observație:** reducerea lui *k* duce la o compresie mai bună,
dar cu pierdere vizibilă de detaliu.
Există un prag optim unde imaginea păstrează claritatea, dar ocupă mult mai puțină memorie.


## Task 2 – PCA cu SVD

Am aplicat **analiza componentelor principale** folosind `SVD` pentru a reduce dimensiunea datelor.

Pași principali:
1. normalizarea datelor,
2. calcularea `SVD` asupra matricii standardizate,
3. proiectarea imaginilor pe un spațiu cu mai puține dimensiuni (*pcs*),
4. reconstrucția imaginii.

**Observație:** rezultatele sunt similare cu Task 1,
dar `PCA` oferă o **interpretare mai intuitivă** asupra direcțiilor de variație maximă.


## Task 3 – PCA cu matricea de covarianță

Am repetat algoritmul `PCA`, de această dată folosind **matricea de covarianță și valorile/vectorii proprii**.  

Metodologia urmează pașii clasici:
1. calcularea mediei și centrarea datelor,
2. construirea matricei de covarianță,
3. diagonalizarea acesteia,
4. selecția celor mai relevante componente.  

**Observație:** rezultatele reconstrucției sunt echivalente cu metoda bazată pe `SVD`,
dar costul computațional poate fi diferit în funcție de dimensiunea datelor.


## Task 4 – Recunoașterea cifrelor scrise de mână

Am abordat problema **digit recognition** pe `setul MNIST` (60.000 imagini de antrenament, 28x28 pixeli).  

Implementare:
1. pregătirea și normalizarea datelor,
2. aplicarea `PCA` pentru reducerea dimensionalității (la ~23 componente),
3. clasificarea folosind algoritmul **k-nearest neighbours** (*k = 5*)

**Rezultat:** algoritmul obține o acuratețe de aproximativ **93%**,
un compromis între simplitate și performanță.  

**Observație:** deși nu atinge precizia rețelelor neuronale (>98%),
metoda `PCA + kNN` are **avantajul clarității** și a **timpului de rulare mai redus**.



## Concluzii

- `SVD` și `PCA` reprezintă instrumente esențiale în reducerea dimensionalității și compresia datelor vizuale. 
- Am observat empiric cum numărul de componente influențează direct calitatea reconstrucției
- Recunoașterea cifrelor prin `PCA + kNN` demonstrează puterea metodelor numerice „clasice” în machine learning,
    chiar și în fața unor probleme moderne

Proiectul îmbină teoria matematică cu aplicații practice,
oferind o perspectivă clară asupra modului în care metodele numerice
fundamentează algoritmi de procesare a imaginilor și clasificare.

