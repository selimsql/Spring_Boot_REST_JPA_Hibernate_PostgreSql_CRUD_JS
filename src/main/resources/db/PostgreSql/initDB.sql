CREATE DATABASE resttest
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

Create Table public.User (
 Id  bigserial NOT NULL,
 Code VARCHAR(30) NOT NULL,
 Name VARCHAR(30) NOT NULL,
 Surname VARCHAR(30) NOT NULL,
 Password VARCHAR(100) NOT NULL,
 Phone VARCHAR(20),
 Status Int2 NOT NULL,
 primary key(Id)
);

Alter table public.User
 add constraint UIdx_User_Code unique(Code);

ALTER SEQUENCE public.user_id_seq
    OWNER TO postgres;
