set :branch, 'master'

role :app, %w{USER_NAME@IP_ADDRESS}
role :web, %w{USER_NAME@IP_ADDRESS}
role :db,  %w{USER_NAME@IP_ADDRESS}

server 'IP_ADDRESS', user: 'USER_NAME', roles: %w{web app db}

set :ssh_options, {
    keys: [File.expand_path('/key/path/to/')],
    forward_agent: true,
    auth_methods: %w(publickey)
}


