# [Глава 1](../index.md#Глава-1-Построение-абстракций-с-помощью-процедур)

### Упражнение 1.16

Напишите процедуру, которая развивается в виде итеративного процесса и реализует возведение в степень за логарифмическое число шагов, как `fast-expt`. (Указание: используя наблюдение, что `(b^(n/2))² = (b²)^(n²)` , храните, помимо значения степени n и основания b, дополнительную переменную состояния a, и определите переход между состояниями так, чтобы произведение abⁿ от шага к шагу не менялось. Вначале значение a берется равным 1, а ответ получается как значение a в момент окончания процесса. В общем случае метод определения инварианта (invariant quantity), который не изменяется при переходе между шагами, является мощным способом размышления о построении итеративных алгоритмов.)

#### Решение

[Code](../../racket/src/chapter01/1_16.rkt)
***
[Test](../../racket/test/chapter01/1_16.rkt)