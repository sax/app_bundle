namespace :reset do
  namespace :db do
    desc 'Initialize an empty Postgres database'
    task :init do
      sh('initdb -D ./pg_data -E "UTF-8" --lc-collate="en_US.UTF-8" --lc-ctype="en_US.UTF-8" || :')
    end

    task :start do
      sh('postgres -D ./pg_data & sleep 5')
    end

    task :stop do
      sh('pkill -f postgres')
    end

    desc 'Create a postgres superuser'
    task :user do
      sh('createuser -s postgres || :')
    end
  end

  task db: %w[
    reset:db:init
    reset:db:start
    reset:db:user
    reset:db:stop
  ]
end


