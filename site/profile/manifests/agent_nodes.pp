class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.docker.vm':}
  dockeragent::node {'db.docker.vm':}
  dockeragent::node {'miner.docker.vm':}
  host {'web.docker.vm':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host {'db.docker.vm':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
