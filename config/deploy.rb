lock '3.4.0'
set :application, 'travel_review'
set :repo_url, 'git@github.com:Thanapatsir/travel_review.git'

set :rvm_ruby_version, '2.2.1@travel_review'
set :deploy_to, '/home/thanapat/travel_review'
set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :keep_releases, 3



namespace :deploy do
    task :restart do
    on roles(:app), in: :sequence do
      execute :touch, release_path.join('tmp/restart.txt')
      end
    end
    after :publishing, :restart
  end
