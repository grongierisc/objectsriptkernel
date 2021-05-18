# Jupyter Iris Embedded

First of all big up to Nikita Mullin for the objectsrcipt kernel for jupyter.

https://community.intersystems.com/post/how-i-added-objectscript-jupyter-notebooks

# How to make this works ?

```sh
docker compose up
```

Go to http://localhost:8888/tree/

Enjoy.

# Features

Support of ObjectScript Command :

Prefix any cell with %cos

```objectscript
%cos
set test="titi"
zw test
if test '= "titi" {
    zw "if"
}
else {
    zw "else"
}
```

Suppor of SQL Command :

Prefix any cell with %cos

```sql
%sql
SELECT * FROM Demo.Person
```