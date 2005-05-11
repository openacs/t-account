-- account__create
--    @param account_name   text of name of account
--    @param parent_id      id of cr_item to be parent 
--                            (note! must accept account type)
--
-- returns the id of the item

create or replace function account__create
(
    varchar,   -- account_name
    int4       -- parent_id
) 
returns int4 as
'
declare 
    account_name    alias for $1;
    parent_id       alias for $2;
    new_item_id     int4;
    new_rev_id      int4;

begin
    new_item_id := content_item__new('an account', parent_id);

    insert into accountsi (item_id, account_name)
        values (new_item_id, account_name);

    return new_item_id;
end;
'
language 'plpgsql';

-- account__delete
--    @param account_item_id   id of cr_item of type 'account' to delete

create or replace function account__delete
(
    int4       -- delete_item_id
) 
returns int4 as
'
declare 
    delete_item_id       alias for $1;
    revision_cursor      record;
    
begin
    for 
        revision_cursor
    in
        select 
            r.revision_id 
        from 
            cr_revisions r 
        where 
            r.item_id = delete_item_id
    loop
        delete from accounts where account_id = revision_cursor.revision_id;
    end loop;

    perform content_item__delete(delete_item_id);

    return 0;
end;
'
language 'plpgsql';

