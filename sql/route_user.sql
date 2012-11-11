/* Таблица участников похода
 *
 * Блок данных
 * k_route - маршрут
 * k_user - участник
 *
 */

create table route_user (
  k_route_user bigint unsigned not null auto_increment primary key,

  k_route bigint unsigned not null default 0,
  k_user bigint unsigned not null default 0,

  unique index (k_route,k_user),

  foreign key (k_route) references route(k_route) on update cascade on delete restrict,
  foreign key (k_user) references user(k_user) on update cascade on delete restrict
) engine = InnoDB