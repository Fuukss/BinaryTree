# Zadanie 2 – Typ wierzchołka w drzewie binarnym

## Opis

W tabeli zawarte są informacje o węzłach pewnego drzewa binarnego. Każdy wiersz przedstawia jeden wierzchołek:
- **N** – wartość (klucz główny),
- **P** – wartość rodzica (klucz obcy, wskazujący na **N** innego wiersza).

## Dane wejściowe

Przykładowa tabela `drzewo`:

| N | P    |
|---|------|
| 1 | 2    |
| 3 | 2    |
| 6 | 8    |
| 9 | 8    |
| 2 | 5    |
| 8 | 5    |
| 5 | NULL |

 - Wierzchołek **5** jest korzeniem (root), ponieważ `P` ma wartość `NULL`.
- **2** i **8** są dziećmi wierzchołka **5**.
- **1** i **3** są dziećmi wierzchołka **2**.
- **6** i **9** są dziećmi wierzchołka **8**.

## Sposób rozwiązania

1. **root**: Wiersz z `P IS NULL` – w tym przykładzie jest to **5**.
2. **leaf**: Wiersz, który nie jest rodzicem żadnego innego wiersza (żaden inny wiersz nie ma w kolumnie **P** jego wartości **N**). W tym przykładzie są to **1**, **3**, **6**, **9**.
3. **inner**: Wiersz, który nie jest korzeniem, ale sam jest rodzicem (ma `P IS NOT NULL` i występuje w kolumnie **P** w innym wierszu). W tym przykładzie są to **2** oraz **8**.
