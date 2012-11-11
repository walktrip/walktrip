/* Блок данных
 * s_title - название точки
 * f_lat - долгота  (или наоборот 0_о)
 * f_lng - широта
 * k_route - id маршрута. 0 - точка не привязана к маршруту
 * s_description - описание точки
 */
create table point (
  k_point bigint unsigned not null auto_increment primary key,

  f_lat decimal not null default 0,
  f_lng decimal not null default 0,
  k_route bigint unsigned not null default 0,
  s_description longtext not null,
  s_title longtext not null,

  foreign key (k_route) references route(k_route) on update cascade on delete cascade
) engine = InnoDB