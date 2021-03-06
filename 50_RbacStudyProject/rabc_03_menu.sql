-- 用戶表
create table rbac_03_user(
	id int(10) primary key auto_increment,
    username varchar(255) not null,
    password varchar(255) not null
);

insert into rbac_03_user values(default, 'mickey', '1234');
insert into rbac_03_user values(default, 'mini', '2234');
insert into rbac_03_user values(default, 'mike', '3234');
insert into rbac_03_user values(default, 'john', '4234');

select * from rbac_03_user;

-- 用戶-角色表
create table rbac_03_user_actor(
	id int(10) primary key auto_increment,
    uid int(10) not null,
    aid int(10) not null
);

insert into rbac_03_user_actor values(default, 1, 1);
insert into rbac_03_user_actor values(default, 2, 2);
insert into rbac_03_user_actor values(default, 3, 3);
insert into rbac_03_user_actor values(default, 4, 3);

select * from rbac_03_user_actor;

-- 角色表
create table rbac_03_actor(
	id int(10) primary key auto_increment,
    actor_name varchar(255) not null
);

insert into rbac_03_actor values(default, "meneger");
insert into rbac_03_actor values(default, "sa");
insert into rbac_03_actor values(default, "programmer");

select * from rbac_03_actor;

-- 角色-菜單表
create table rbac_03_actor_menu(
	id int(10) primary key auto_increment,
    aid int(10) not null,
    mid int(10) not null
);

insert into rbac_03_actor_menu values(default, 1, 1);
insert into rbac_03_actor_menu values(default, 1, 2);
insert into rbac_03_actor_menu values(default, 1, 3);
insert into rbac_03_actor_menu values(default, 1, 4);
insert into rbac_03_actor_menu values(default, 1, 5);
insert into rbac_03_actor_menu values(default, 1, 6);
insert into rbac_03_actor_menu values(default, 1, 7);
insert into rbac_03_actor_menu values(default, 2, 2);
insert into rbac_03_actor_menu values(default, 2, 3);
insert into rbac_03_actor_menu values(default, 2, 4);
insert into rbac_03_actor_menu values(default, 2, 5);
insert into rbac_03_actor_menu values(default, 3, 2);
insert into rbac_03_actor_menu values(default, 3, 3);
insert into rbac_03_actor_menu values(default, 3, 6);
insert into rbac_03_actor_menu values(default, 3, 7);

select * from rbac_03_actor_menu;

-- 菜單表
create table rbac_03_menu(
	id int(10) primary key auto_increment,
    menu_name varchar(255) not null, 
    pid int(10) not null
);

insert into rbac_03_menu values(default, 'system setting', 0);
insert into rbac_03_menu values(default, 'markting managment', 0);
insert into rbac_03_menu values(default, 'apartment managment', 1);
insert into rbac_03_menu values(default, 'actor managment', 1);
insert into rbac_03_menu values(default, 'role menagment', 1);
insert into rbac_03_menu values(default, 'order menegment', 2);
insert into rbac_03_menu values(default, 'client menegment', 2);

select * from rbac_03_menu;

-- 頁面元素表
create table rbac_04_element(
	id int(10) primary key auto_increment,
    element_str varchar(50) not null
);
insert into rbac_04_element values(default, 'ins');
select * from rbac_04_element;

-- 角色-頁面元素表
create table rbac_04_actor_element(
	id int(10) primary key auto_increment,
    aid int(10) not null,
    eid int(10) not null
);
insert into rbac_04_actor_element values(default, 1, 1);
select * from rbac_04_actor_element;

-- url權限
create table rbac_05_url(
	id int(10) primary key auto_increment, 
    url_path varchar(100)
);
insert into rbac_05_url values(default, '/50_RbacStudyProject/t03_menu.jsp');
insert into rbac_05_url values(default, '/50_RbacStudyProject/t05_urlrole.jsp');
select * from rbac_05_url;

-- 角色-url權限
create table rbac_05_actor_url(
	id int(10) primary key auto_increment,
    aid int(10) not null,
    url_id int(10) not null
);
insert into rbac_05_actor_url values(default, 1, 1);
insert into rbac_05_actor_url values(default, 2, 2);
select * from rbac_05_actor_url;
