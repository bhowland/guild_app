role :app, %w{deploy@45.33.19.210}
role :web, %w{deploy@45.33.19.210}
role :db,  %w{deploy@45.33.19.210}

server '45.33.19.210', user: 'deploy', roles: %w{web app}

set :ssh_options, {
    keys: %w(/home/action/.ssh/id_rsa),
    forward_agent: true,
    user: 'deploy'
  }