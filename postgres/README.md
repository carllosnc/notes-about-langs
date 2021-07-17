<h1 align="center">
  PostgreSQL
</h1>

### Installing

[Download](https://www.postgresql.org/download/)

### Tools

[PG Cli](https://www.pgcli.com/)

### Database mock

[Northwind database](https://github.com/pthom/northwind_psql)

### Resources

[Awasome postgreSQL](https://github.com/dhamaniasad/awesome-postgres)

### Articles

[Soft delete pattern in postgres](http://rockwood.me/2018/soft-delete-pattern-in-postgres/)

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
  > GRANT ALL PRIVILEGES ON DATABASE database_name TO user;
```
