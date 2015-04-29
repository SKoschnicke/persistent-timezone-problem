Example for problem with `timezone` columns in postgres.

This is a default scaffolded yesod site with postgres database. Using
stackage LTS 2.3 which includes `persistent-2.1.2` and
`persistent-postgresql-2.1.3`.

* added a model `Test` which has a field `date` of type `timezone` in the database
* removed automatic execution of migrations
* created database with table `test`, and added one row of data to it, see `db_dump.sql`
* added a database access to the home handler

Accessing the page now results in an internal server error:

```
Incompatible {errSQLType = "timestamp", errSQLTableOid = Just (Oid 2911655112), errSQLField = "\240\197\175\SOH", errHaskellType = "UTCTime", errMessage = ""}
```
