-- Fix the following Cassandra CQL script so that each block does what the leading comment suggests.
-- Don't change table and field names

-- Create keyspace
CREATE KEYSPACE homework

-- Use keyspace
USE homework;

-- Create invoice table so that an invoice can contain multiple articles
-- Invoice owner should not be the same across all articles within an invoice
CREATE TABLE invoice
(
  invoice_id bigint,
  invoice_owner text,
  invoice_address text,
  article_id bigint,
  article_name text,
  article_price decimal
);

-- Insert an invoice without any articles
-- (invoice_id, invoice_owner and invoice_address should be completed)
INSERT INTO invoice VALUES (1, "Owner 1", "EPAM Budapest")

-- Add two articles to the invoice identified with id 1
-- article_id: 100, article_name: Pencil, article_price: 0.99
-- article_id: 200, article_name: Notebook, article_price: 7.99
-- You can use more than one CQL statement.
INSERT

-- Insert a new invoice with a single UPDATE statement. The new invoice should have the following fields:
-- invoice_id: 2, invoice_owner: Aaron, invoice_address: EPAM Szeged,
--   article_id: 200, article_name: Kindle, article_price: 69.99
UPDATE

-- Change the owner of the first invoice to Aaron with a single statement.
-- The change should affect all articles of the invoice
UPDATE invoice

