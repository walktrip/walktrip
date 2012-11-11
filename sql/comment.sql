/* Блок данных
 * dt_create - Дата создания коментария
 * i_unit - юнит даного комментария
 * s_body - текст сообщения
 */
create table comment (
  k_comment bigint unsigned not null auto_increment primary key,

  dt_create datetime not null default 0,
  i_unit tinyint unsigned not null default 0,
  s_body mediumtext not null,

  k_user bigint unsigned not null default 0,

  foreign key (k_user) references user(k_user) on update cascade on delete cascade
) engine = InnoDB