# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'text_mining'
set :repo_url, 'git@github.com:dirtyhero/text_mining.git'
ask :branch, "master"

set :rvm_type, :system
set :rvm_ruby_version, "2.2.1"
set :deploy_to, "/home/ec2-user/text_mining"
set :linked_dirs, fetch(:linked_dirs, []).push("tmp/pids", "tmp/sockets")
set :unicorn_pid, "#{shared_path}/tmp/pids/unicorn.pid"

set :bundle_jobs, 4

# set :linked_files, fetch(:linked_files, []).push("config/database.yml", "config/application.yml")

namespace :deploy do
  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      p "Deploy done"
    end
  end
  
  after :deploy, "deploy:restart"
end

