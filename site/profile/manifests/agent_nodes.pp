class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.docker.vm':}
  dockeragent::node {'db.docker.vm':}
}
