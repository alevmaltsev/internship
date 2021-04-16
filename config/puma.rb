threads_count = ENV.fetch('PUMA_THREADS', 5)
threads threads_count, threads_count

puma_port    = ENV.fetch('PUMA_PORT', 8080)
puma_host    = ENV.fetch('PUMA_HOST') { '0.0.0.0' }
puma_backlog = ENV.fetch('PUMA_BACKLOG', 100)

bind "tcp://#{puma_host}:#{puma_port}?backlog=#{puma_backlog}"
pidfile     ENV.fetch('PUMA_PIDFILE') { File.join(Dir.pwd, 'tmp/puma.pid') }

environment ENV.fetch('RAILS_ENV') { 'development' }
directory   ENV.fetch('APP_ROOT') { Dir.pwd }
workers     ENV.fetch('PUMA_WORKERS', 5)
worker_timeout ENV.fetch('PUMA_TIMEOUT', 60)

preload_app!

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

plugin :tmp_restart
