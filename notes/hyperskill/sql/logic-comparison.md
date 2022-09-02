## Logic and comparison expressions 
In our previous topics we have already figured out that SQL language uses different expressions, such as arithmetic, logic, and comparisons to extract required data from tables. Those expressions make queries specific. This time let's get into details of logic expressions and comparisons in order to understand how they work.

Imagine that you are responsible for a book store database. You already know how to select preprocessed info about all entities from a table "books". There are so many rows in each selection, and you need to filter them according to certain criteria, for example, by author, language, some attribute or even expression requested by the client. The selection of a subset of rows from a table is called filtering. 

## Filtering by a criteria

In most cases when we proceed with a query we want to extract only those records that comply with certain criteria. In order to filter the selection, there is a special operator WHERE in SQL.

The syntax for this operator is as follows:
```
SELECT *
FROM table
WHERE conditions
```
In the conditions field we can insert any parameters we want our extracted data to be consistent with. However, in order to define those specific selection conditions, we need to apply them to expressions.

Let's imagine that your first client wants to buy a book by Charles Dickens. Let's write a query that selects books that meet the criteria:
```
SELECT id, title, rating
FROM books
WHERE author = 'Charles Dickens';
```
At the end of the SELECT statement, we added a keyword WHERE followed by the logical expression that specifies the filters author = 'Charles Dickens'.

The SELECT clause doesn't have to contain the columns or expressions listed in the WHERE clause. For example, we didn't have to output author in the query above even though there is a corresponding condition in WHERE.

## Filtering with Comparisons

There is a full list of comparisons operations which can be used in the WHERE operator.

![image](https://user-images.githubusercontent.com/92832451/188110063-167bf1fd-ceaf-432c-93bc-3bd2e3ff70c1.png)

Usually, we apply comparisons to numerical values. In case we want to make a selection by string literals or dates, we should put those in quotation marks (" ").

Below are some examples of data extraction from table products using comparisons.

![image](https://user-images.githubusercontent.com/92832451/188110104-70ce83dd-52f2-4aad-ad97-8cd1bfe6c570.png)


Let's say, we want to know which products in our table cost more than 250. This time we use the > operator. The query looks like this:
```
SELECT *
FROM products
WHERE price > 250
```
Below we can see what our table with the requested items looks like:
![image](https://user-images.githubusercontent.com/92832451/188110179-2a08ed6a-4834-47e0-a7ad-d0372c8d0c19.png)


Pretty simple, isn't it?

If we want to select items that cost more than or equal to 250, we should use >= instead. The same principle works for comparisons < and <=. Let's study one more example to make sure we are clear about it.

This time, we want to select all products from the table that are related to the vegetables category. Our SQL query will look like this:

```
SELECT *
FROM products
WHERE category = 'vegetables'
```

Note, that quotation marks are essential when we make a selection by a string literal. If you forget them, the query won't work.

The result of our selection seems to be correct:

![image](https://user-images.githubusercontent.com/92832451/188110295-75f5810f-f22c-4474-b372-33a5e5a67234.png)


## Logical expressions

We are convinced that expressions with comparisons are easy for you to handle. Next, we are going to deal with logical expressions that help us form more complex SQL queries. Here are the three operators from boolean algebra that you are already familiar with:

- NOT returns True if argument equals to False and vice versa.
- AND compares operands and returns True only if all of them are True. Alternatively, returns False.
- OR returns True if at least one of the operands is True. Otherwise, returns False.

Please note the order of operators given above, as they are sorted according to their priority (meaning that if we have all three operands in the expression, first we proceed with NOT, then comes AND, and finally OR).

The picture below shows the logic of the operands mentioned above:

![image](https://user-images.githubusercontent.com/92832451/188110410-406243ab-97a0-4257-868b-c69f62de48ff.png)

Now let's study several more examples.

Below we have a table named staff containing info on programmers working in our company. Imagine we want to make a selection of those fitting for our next project.

![image](https://user-images.githubusercontent.com/92832451/188110445-838672ba-99fd-4b99-9229-2e3f1cd78fc2.png)

In order to hire the right person for the project, we need a candidate to meet two requirements: be a Middle or a Senior and know SQL.

Our query should look like this:

```
SELECT *
FROM staff
WHERE (status="Middle" OR status="Senior") AND skills="SQL"
```

Please note the parentheses that we use with the OR operand. It's an important tool for prioritizing the OR condition over AND. If we do not use it, SQL would first process the AND operand and only then OR, making the query request irrelevant.

We can arrange the same criteria selection by using the NOT operand instead of OR:

```
SELECT *
FROM staff
WHERE NOT(status="Junior") AND skills="SQL"
```

Our selection of candidates for the project will look as follows:

![image](https://user-images.githubusercontent.com/92832451/188110584-82dbf867-11f0-48c4-8bc3-6bbc6711380b.png)


Now we can send proposals to those three lucky ones, and you should continue mastering your SQL skills in order to become one of them.





