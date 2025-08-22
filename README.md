# 🖼️ Numerical Image Processing

Acest proiect explorează metode numerice pentru **procesarea și compresia imaginilor**,
folosind concepte fundamentale din algebra liniară (`SVD`, `PCA`) și clasificare (`k-NN`).
Este un exemplu practic de cum tehnici matematice pot fi aplicate pentru **probleme reale**
precum reducerea dimensiunii datelor și recunoașterea cifrelor scrise de mână.

> Găsești [aici](./Readme.md) o scurtă descriere a implementării algoritmului.


## Task 1 – Compresia imaginilor cu SVD

Am implementat o funcție care comprimă o imagine alb-negru folosind **descompunerea valorilor singulare** (`SVD`).
Prin păstrarea doar a celor mai importante valori singulare,
obținem o imagine aproape identică vizual, dar mult mai compactă în memorie.

**Ce am învățat:**
cum poate fi folosită algebra liniară pentru a elimina informația redundantă
și a optimiza stocarea imaginilor.


## Task 2 – Compresia imaginilor cu PCA (metoda SVD)

Am aplicat **analiza componentelor principale (`PCA`)** folosind `SVD`
pentru a reduce dimensiunea datelor și a reconstrui imaginea.
PCA surprinde direcțiile de variație maximă și permite o reprezentare mai eficientă.

**Ce am învățat:** legătura dintre `PCA` și `SVD`
și cum putem proiecta datele într-un spațiu redus păstrând structura esențială.


## Task 3 – Compresia imaginilor cu PCA (matricea de covarianță)

Am implementat `PCA` folosind **matricea de covarianță** și valori proprii.
Aceasta este o abordare alternativă la metoda cu `SVD`, dar cu rezultate similare.

**Ce am învățat:** cum valorile și vectorii proprii definesc componentele principale
și cum pot fi aplicate pentru reducerea dimensiunii datelor.


## Task 4 – Recunoașterea cifrelor scrise de mână

Am folosit [**setul de date `MNIST`**](https://upload.wikimedia.org/wikipedia/commons/thumb/b/b1/MNIST_dataset_example.png/330px-MNIST_dataset_example.png)
(imagini 28x28 pixeli)
și am aplicat `PCA` pentru a reduce dimensiunea datelor,
urmat de un algoritm **k-nearest neighbours (k=5)** pentru clasificare.
Algoritmul atinge o **acuratețe** de **aproximativ 93%**.

> **MNIST** = Modified National Institute of Standards and Technology

**Ce am învățat:**
pașii necesari într-un pipeline clasic de machine learning – de la
pregătirea datelor și reducerea dimensionalității, până la clasificare și evaluarea rezultatelor.


## De ce este un proiect util

- Leagă concepte teoretice de aplicații practice
- Demonstrează cum putem optimiza stocarea și procesarea imaginilor
- Oferă o introducere în recunoașterea de pattern-uri și clasificare,
    un subiect central în inteligența artificială


## Concluzii

Proiectul m-a ajutat să înțeleg:
- cum algebra liniară se aplică direct în procesarea imaginilor
- diferențele dintre `SVD` și `PCA`
- cum se construiește un algoritm complet de recunoaștere a cifrelor

Experiența a consolidat abilități de programare, gândire algoritmică și aplicare practică a conceptelor matematice.




## Ghid de folosire al proiectului 🚀

### Instalare dependențe 🛠️

```sh
sudo apt install -y octave
```

### Rularea testelor ✅

#### 1️⃣ Din linia de comandă (**CLI**)

- Varianta 1 (direct din terminal):
```sh
$ octave-cli checker.m
```

- Varianta 2 (din terminalul `Octave`)
```sh
$ octave
octave:1> cd <calea catre-repo>
octave:2> pwd           # verifică că ești în directorul corect
octave:3> checker       # rulează scriptul
```

> 💡 Comanda `octave` deschide un **interpreter Octave** (similar cu un shell interactiv),
> unde poți introduce comenzi și scripturi `.m` direct, pas cu pas.

#### 2️⃣ Din interfața grafică (**GUI**)

Pași:
1. Clonează repository-ul
2. Deschide aplicația **GNU Octave**
3. În **File Browser** (panoul din stânga), navighează către directorul proiectului clonat
4. Fă **click dreapta** pe numele directorului și selectează **⬆️ Open**
5. Dă **dublu click** pe fișierul `checker.m` pentru a-l deschide
6. În **toolbar-ul** de sus, caută iconița verde cu o rotiță albă ⚙️ și dă **dublu click** pe ea 
   - La trecerea cu mouse-ul peste iconiță, va apărea descrierea: *“Save File and Run / Continue”*
7. Rezultatele testelor vor fi afișate în tab-ul `Command Window` (situat în partea de jos a ferestrei)
