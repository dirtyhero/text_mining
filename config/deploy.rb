# config valid only for current version of Capistrano
lock "3.4.0"

set :application,"text_mining"
set :repo_url, "git@github.com:dirtyhero/text_mining.git"
ask :branch, "master"
set :rvm_ruby_version, "2.2.1"
set :deploy_to, "/home/ec2-user/text_mining"
set :pid_file, "#{current_path}/tmp/pids/unicorn.pid"
set :linked_dirs, fetch(:linked_dirs, []).push("tmp/pids", "tmp/sockets")
# set :linked_files, fetch(:linked_files, []).push("config/database.yml", "config/application.yml")

namespace :deploy do
  desc "Restart application"
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      p test "[ -f #{fetch :pid_file} ]"
      if test "[ -f #{fetch :pid_file} ]"
        execute "kill -USR2 `cat #{fetch :pid_file}`"
      else
        within current_path do
          p current_path
          execute :bundle, "exec unicorn", "-D", "-E $RAILS_ENV", "-c #{current_path}/config/unicorn.rb"
        end
      end
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      p "Deploy done"
    end
  end

  after :deploy, "deploy:restart"
end
