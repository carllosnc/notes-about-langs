<p align="center">
  <img
    alt="icon"
    width="80"
    src="https://camo.githubusercontent.com/7ec7342682bb9a1b6bd253b57604c36add3c44b5/68747470733a2f2f75706c6f61642e77696b696d656469612e6f72672f77696b6970656469612f636f6d6d6f6e732f322f32392f506f737467726573716c5f656c657068616e742e737667"
  />
</p>

<h1 align="center">
  PostgreSQL Notes
</h1>

### Installing

[Download](https://www.postgresql.org/download/)

### Tools

[PG Cli](https://www.pgcli.com/)

### Database mock

[Northwind database](https://github.com/pthom/northwind_psql)

### Resources

[Awasome postgreSQL](https://github.com/dhamaniasad/awesome-postgres)

### Commands

Postgres
```
  \du - list all users
  \l - list databases
  \list - list databases
  \dt - list tables
```

Create new role
```
  sudo su - postgres
  createuser --interactive --pwprompt
```

Enter on psql
```
  psql -U username database
```

Enter on pgcli
```
  pgcli -U username database
```

Create database
```
  > CREATE DATABASE database_name;
```
