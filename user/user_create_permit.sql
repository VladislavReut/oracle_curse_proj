create role role_cinema_user;
grant create session to role_cinema_user;
create user cinema_user identified by 123456
default tablespace cinema_ts quota 2m on cinema_ts;
grant role_cinema_user to cinema_user with admin option;

grant select on film to cinema_user;
grant select on films_categories to cinema_user;
grant select on category to cinema_user;
grant select on cinema_hall to cinema_user;
grant select on "SESSION" to cinema_user;
grant select on place to cinema_user;

drop user cinema_user