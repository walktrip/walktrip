/* Блок данных
 * s_name - фио
 */
create table user (
  k_user bigint unsigned not null auto_increment primary key,

  s_name tinytext not null
) engine = InnoDB