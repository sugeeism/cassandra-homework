# Cassandra Homework 

## Context
We are developing the backend of an invoicing system. The system can receive two types pf messages:

1. HEADER [invoice_id, invoice_date, invoice_address]
1. DETAIL [invoice_id, line_id, article_name, article_price]

The messages can arrive in any order (e.g. a DETAIL message can arrive before the 
corresponding HEADER message arrives).

We store both the header and the detail information in a single table called `invoice`.

## Homework

1. Fix the create script in the `01-create-script.sql` file so that both the 
upsert statements from the `02-upsert-readonly.sql` file and the 
select statements in the `03-query-readonly.sql` can be executed without changes.
1. Fix the queries in the `04-query-fix.sql` file so that they work as expected.

## Installing and Using Cassandra

There are two easy ways to use Cassandra on your computer:

1. ***Download and unpack:*** Download the tarball from [here](http://cassandra.apache.org/download/).
Unpack it and open a CQL shell by running the `cqlsh` command from its `bin` folder.
1. ***Docker:*** Use the following docker commands:

```bash
# Pull latest release
docker pull cassandra

# Create a cassandra container named cass
docker run --name cass -d cassandra

# Start a CQL shell within the container
docker exec -it cass cqlsh
```