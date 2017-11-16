node default {
}
node 'ip-172-29-10-232.mirabeau.cloud' {
  include role::master_server
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
