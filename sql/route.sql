/* Блок данных
 * dt_start - плановый старт
 * i_type - тип похода (горный, пеший, водный) - выносим в модель ? О_о
 * s_description - описание похода
 * s_title - название похода
 * uid_master - id пользователя создавшего поход(глава)
 * uid_steward - id завхоза
 */

create table route (
  k_route bigint unsigned not null auto_increment primary key,

  dt_start datetime not null default 0,
  i_type tinyint unsigned not null default 0,
  s_description longtext not null,
  s_title text not null,
  uid_master bigint unsigned not null default 0,
  uid_steward bigint unsigned not null default 0,

  foreign key (uid_master) references user(k_user) on update cascade on delete restrict,
  foreign key (uid_steward) references user(k_user) on update cascade on delete restrict
) engine = InnoDB