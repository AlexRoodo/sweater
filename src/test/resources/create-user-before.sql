delete from user_role;
delete from usr;

insert into usr (id, active, password, username) values
(1, true, '$2a$08$cnB/B5Cdk1rJ/j7y6tp6g./MrmZvtaVFdG5bNYAhZa81Q7NrFdpIW', 'admin'),
(2, true, '$2a$08$cnB/B5Cdk1rJ/j7y6tp6g./MrmZvtaVFdG5bNYAhZa81Q7NrFdpIW', 'mike');

insert into user_role (user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');