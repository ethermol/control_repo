class role::master_server {
  include profile::base
  include profile::docker
  include profile::agent_nodes
}
