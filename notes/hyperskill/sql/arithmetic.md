## Arithmetic Expression

If you remember a bit of school math, arithmetic expressions in SQL will look familiar to you. We can also perform mathematical calculations on our data.

The basic set of arithmetic operators supported in SQL is the following:

- unary minus that changes the sign of a value;
```
SELECT -2;
> -2
```

- \* multiplication;
- / division;
- % modulo that returns the remainder of integer division;

```
SELECT 20*15;
> 300
SELECT 3/5;
> 0.60
SELECT 18%4;
> 2
```

- \+ addition;
- \- subtraction.
```
SELECT 30+234;
> 264
SELECT 3-5;
> -2
```

SQL supports the common rules of operator precedence. In the list above operators are sorted in descending priority. SQL also supports brackets to make an operator take priority over any other operation.

You can also utilize brackets to improve code readability even if you do not need them to correctly evaluate an expression. Compare these: -2+2*2-2/2 and (-2)+(2*2)-(2/2). The second one is much easier to read!

## Calculator

After reading this topic, you can now use SQL when you do not have a calculator at hand! This sounds like quite a lifehack. Moreover, now you know how to process strings. Very impressive!

In SQL you can select not only a literal but an arithmetic expression, as well. Let's provide a template for a simple SQL query that extracts an expression:

```
SELECT expression;
```
The statement consists of three parts: the keyword SELECT, the expression we want to evaluate, and a semicolon that defines the end of the query.

For example, the code below evaluates the expression (2+2)*15.
```
SELECT (2+2)*15;
```
