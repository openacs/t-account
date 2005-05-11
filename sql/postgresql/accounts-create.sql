-- -- make accounts table
-- 
-- create table accounts
-- (
-- 	account_id     integer
--                          constraint accounts__acct_id__cr_revs__fk 
--                           references cr_revisions
--                          constraint accounts__acct_id__pk
--                           primary key
-- );

-- make accounts object type

select content_type__create_type
(
    'account',                     -- content_type
    'content_revision',            -- supertype
    'Account',                     -- pretty_name,
    'Accounts',                    -- pretty_plural
    'accounts',                    -- table_name
    'account_id',                  -- id_column
    null                           -- name_method
);

-- necessary to work around limitation of content repository:
select content_folder__register_content_type(-100,'account','t');

-- create content type attributes

select content_type__create_attribute 
(
    'account',
    'account_name',
    'text',
    'Name of Account',
    'Names of Accounts',
    null,
    null,
    'varchar'
);

