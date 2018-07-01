# [Глава 1](../index.md#Глава-1-Построение-абстракций-с-помощью-процедур)

### Упражнение 1.9
Каждая из следующих двух процедур определяет способ сложения двух положительных целых чисел с помощью процедур `inc`, которая добавляет к своему аргументу 1, и `dec`, которая отнимает от своего аргумента 1.
```racket
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))
```


```racket
(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
```
Используя подстановочную модель, проиллюстрируйте процесс, порождаемый каждой из этих процедур, вычислив (+ 4 5). Являются ли эти процессы итеративными или рекурсивными?

#### Решение
Обе представленные выше функции являются рекурсивными, т.к вызывают сами себя в процессе исполнения. Первая функция порождает такой процесс:

```racket
(+ 4 5)
  (inc (+ 3 5))
    (inc (inc (+ 2 5)))
      (inc (inc (inc (+ 1 5))))
        (inc (inc (inc (inc (+ 0 5)))))
      (inc (inc (inc (inc 5))))
    (inc (inc (inc 6)))
  (inc (inc 7))
(inc 8)
9
```
Такой процесс строит последовательность отложенных вызовов `inc` - и является линейно-рекурсивным процесс.

Вторая функция построит такой процесс:

```racket
(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9
```
В данном процессе отсутствуют отложенные вызовы функции, это линейно итеративный процесс.