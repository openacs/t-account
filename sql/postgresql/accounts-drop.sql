-- -- drop accounts in accounts table
-- 
-- create function drop_accounts() returns int4 as
-- '
-- '
-- language 'plpgsql';
-- 
-- select drop_accounts();
-- 
-- drop function drop_accounts();

-- drop attributes

select content_type__drop_attribute
(
    'account',
    'account_name',
    't'
);

-- necessary to work around limitation of content repository:

select content_folder__unregister_content_type(-100,'account','t');

-- drop accounts object type

select content_type__drop_type('account', 't', 't');

-- -- drop accounts table
-- 
-- drop table accounts;

