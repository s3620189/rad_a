## Building the rails App

1. Run `docker-compose build` after every Gemfile change or to build the containers

## Running the rails App
1. Run `docker-compose up` to run the rails app
2. hit `http://0.0.0.0:3000`

## Debugging the Rails App

1. Add `binding.pry` or `byebug` in your code where you want to put the breakpoint.
2. Run `docker-compose run --service-port --rm web` in your console to run the rails app in Debug mode
3. Access the endpoint you are debugging to go into debugging mode in pry or byebug

## Rails CHEATSHEET using docker

1. `docker-compose run --rm web rails new . --force --no-deps --database=postgresql`
2. `docker-compose run --rm web bundle install`
3. `docker-compose run --rm web bundle update`
4. `docker-compose run --rm web rails db:create`
5. `docker-compose run --rm web rails db:migrate`
6. `docker-compose run --rm web rails db:drop`
7. `docker-compose run --rm web rails assets:precompile`
8. `docker-compose run --rm web rails console`
9. `docker-compose run --rm web rails test`

Name Xibei Lu
ID  s3620189
 The highest level you attempted 80
 heroku:
 https://limitless-woodland-81215.herokuapp.com/
 
 github:
 https://github.com/s3620189/rad_a
 
 heroku log：
 
2020-05-31T00:58:44.000000+00:00 app[api]: Build succeeded
2020-05-31T00:58:44.336724+00:00 heroku[web.1]: Starting process with command `bundle exec puma -C config/puma.rb`
2020-05-31T00:58:47.585209+00:00 app[web.1]: [4] Puma starting in cluster mode...
2020-05-31T00:58:47.585259+00:00 app[web.1]: [4] * Version 3.12.4 (ruby 2.5.7-p206), codename: Llamas in Pajamas
2020-05-31T00:58:47.585260+00:00 app[web.1]: [4] * Min threads: 5, max threads: 5
2020-05-31T00:58:47.585261+00:00 app[web.1]: [4] * Environment: production
2020-05-31T00:58:47.585261+00:00 app[web.1]: [4] * Process workers: 2
2020-05-31T00:58:47.585261+00:00 app[web.1]: [4] * Preloading application
2020-05-31T00:58:50.377584+00:00 app[web.1]: [4] * Listening on tcp://0.0.0.0:49239
2020-05-31T00:58:50.377604+00:00 app[web.1]: [4] ! WARNING: Detected 2 Thread(s) started in app boot:
2020-05-31T00:58:50.377663+00:00 app[web.1]: [4] ! #<Thread:0x000055ea82a8f148@/app/vendor/bundle/ruby/2.5.0/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby/concurrent/atomic/ruby_thread_local_var.rb:38 sleep_forever> - /app/vendor/bundle/ruby/2.5.0/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby/concurrent/atomic/ruby_thread_local_var.rb:40:in `pop'
2020-05-31T00:58:50.377725+00:00 app[web.1]: [4] ! #<Thread:0x000055ea855c1cf8@/app/vendor/bundle/ruby/2.5.0/gems/activerecord-5.2.4.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:299 sleep> - /app/vendor/bundle/ruby/2.5.0/gems/activerecord-5.2.4.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:301:in `sleep'
2020-05-31T00:58:50.377849+00:00 app[web.1]: [4] Use Ctrl-C to stop
2020-05-31T00:58:50.389352+00:00 app[web.1]: [4] - Worker 0 (pid: 10) booted, phase: 0
2020-05-31T00:58:50.392581+00:00 app[web.1]: [4] - Worker 1 (pid: 12) booted, phase: 0
2020-05-31T00:58:50.675044+00:00 heroku[web.1]: State changed from starting to up
2020-05-31T01:15:44.000000+00:00 app[api]: Build started by user s3620189@student.rmit.edu.au
2020-05-31T01:16:03.370054+00:00 app[api]: Release v9 created by user s3620189@student.rmit.edu.au
2020-05-31T01:16:03.370054+00:00 app[api]: Deploy 47b8451d by user s3620189@student.rmit.edu.au
2020-05-31T01:16:03.968150+00:00 heroku[web.1]: Restarting
2020-05-31T01:16:03.982296+00:00 heroku[web.1]: State changed from up to starting
2020-05-31T01:16:05.405378+00:00 heroku[web.1]: Stopping all processes with SIGTERM
2020-05-31T01:16:05.445099+00:00 app[web.1]: [4] - Gracefully shutting down workers...
2020-05-31T01:16:05.639761+00:00 heroku[web.1]: Process exited with status 143
2020-05-31T01:16:06.000000+00:00 app[api]: Build succeeded
2020-05-31T01:16:06.467690+00:00 heroku[web.1]: Starting process with command `bundle exec puma -C config/puma.rb`
2020-05-31T01:16:08.932291+00:00 app[web.1]: [4] Puma starting in cluster mode...
2020-05-31T01:16:08.932326+00:00 app[web.1]: [4] * Version 3.12.4 (ruby 2.5.7-p206), codename: Llamas in Pajamas
2020-05-31T01:16:08.932340+00:00 app[web.1]: [4] * Min threads: 5, max threads: 5
2020-05-31T01:16:08.932346+00:00 app[web.1]: [4] * Environment: production
2020-05-31T01:16:08.932350+00:00 app[web.1]: [4] * Process workers: 2
2020-05-31T01:16:08.932350+00:00 app[web.1]: [4] * Preloading application
2020-05-31T01:16:10.792443+00:00 app[web.1]: [4] * Listening on tcp://0.0.0.0:10727
2020-05-31T01:16:10.792473+00:00 app[web.1]: [4] ! WARNING: Detected 2 Thread(s) started in app boot:
2020-05-31T01:16:10.792474+00:00 app[web.1]: [4] ! #<Thread:0x0000562000c070a8@/app/vendor/bundle/ruby/2.5.0/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby/concurrent/atomic/ruby_thread_local_var.rb:38 sleep_forever> - /app/vendor/bundle/ruby/2.5.0/gems/concurrent-ruby-1.1.6/lib/concurrent-ruby/concurrent/atomic/ruby_thread_local_var.rb:40:in `pop'
2020-05-31T01:16:10.792510+00:00 app[web.1]: [4] ! #<Thread:0x000056200342cba0@/app/vendor/bundle/ruby/2.5.0/gems/activerecord-5.2.4.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:299 sleep> - /app/vendor/bundle/ruby/2.5.0/gems/activerecord-5.2.4.2/lib/active_record/connection_adapters/abstract/connection_pool.rb:301:in `sleep'
2020-05-31T01:16:10.792580+00:00 app[web.1]: [4] Use Ctrl-C to stop
2020-05-31T01:16:10.797768+00:00 app[web.1]: [4] - Worker 0 (pid: 10) booted, phase: 0
2020-05-31T01:16:10.799028+00:00 app[web.1]: [4] - Worker 1 (pid: 14) booted, phase: 0
2020-05-31T01:16:11.153552+00:00 heroku[web.1]: State changed from starting to up
2020-05-31T01:18:10.237884+00:00 app[web.1]: I, [2020-05-31T01:18:10.237624 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc] Started GET "/" for 175.32.155.125 at 2020-05-31 01:18:10 +0000
2020-05-31T01:18:10.244504+00:00 app[web.1]: I, [2020-05-31T01:18:10.243582 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc] Processing by StaticPagesController#home as HTML
2020-05-31T01:18:10.280389+00:00 app[web.1]: I, [2020-05-31T01:18:10.280270 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendering static_pages/home.html.erb within layouts/application
2020-05-31T01:18:10.282317+00:00 app[web.1]: I, [2020-05-31T01:18:10.282248 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendered static_pages/home.html.erb within layouts/application (1.8ms)
2020-05-31T01:18:10.287698+00:00 app[web.1]: I, [2020-05-31T01:18:10.287602 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendered layouts/_rails_default.html.erb (2.6ms)
2020-05-31T01:18:10.288860+00:00 app[web.1]: I, [2020-05-31T01:18:10.288782 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendered layouts/_shim.html.erb (0.4ms)
2020-05-31T01:18:10.294066+00:00 app[web.1]: I, [2020-05-31T01:18:10.293985 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendered layouts/_header.html.erb (4.2ms)
2020-05-31T01:18:10.295640+00:00 app[web.1]: I, [2020-05-31T01:18:10.295576 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc]   Rendered layouts/_footer.html.erb (0.4ms)
2020-05-31T01:18:10.296247+00:00 app[web.1]: I, [2020-05-31T01:18:10.296189 #10]  INFO -- : [21d31861-6828-4840-aa34-7e671a0a63dc] Completed 200 OK in 52ms (Views: 19.1ms)
2020-05-31T01:18:10.307860+00:00 heroku[router]: at=info method=GET path="/" host=limitless-woodland-81215.herokuapp.com request_id=21d31861-6828-4840-aa34-7e671a0a63dc fwd="175.32.155.125" dyno=web.1 connect=1ms service=75ms status=200 bytes=2423 protocol=https
2020-05-31T01:18:10.639772+00:00 heroku[router]: at=info method=GET path="/assets/application-6cfa2f04bc6ed4a93e9cda4ccaed80edd976aae3a6d1307263650568fdeac1e0.css" host=limitless-woodland-81215.herokuapp.com request_id=0851272c-c38d-4a16-b9c6-1d6f945a6aed fwd="175.32.155.125" dyno=web.1 connect=1ms service=12ms status=200 bytes=21107 protocol=https
2020-05-31T01:18:10.679593+00:00 heroku[router]: at=info method=GET path="/assets/application-fecb6d9c8279908311dbd3284264b7bb34ffc431488671e284486b936f122783.js" host=limitless-woodland-81215.herokuapp.com request_id=424af01e-3549-4319-9718-4057a7a7676b fwd="175.32.155.125" dyno=web.1 connect=1ms service=43ms status=304 bytes=112 protocol=https
2020-05-31T01:18:11.229694+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=limitless-woodland-81215.herokuapp.com request_id=5bf7d63f-d480-42c3-924d-2c11369b7a42 fwd="175.32.155.125" dyno=web.1 connect=1ms service=2ms status=200 bytes=207 protocol=https
2020-05-31T01:20:55.602245+00:00 app[web.1]: I, [2020-05-31T01:20:55.602030 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f] Started GET "/" for 116.30.197.160 at 2020-05-31 01:20:55 +0000
2020-05-31T01:20:55.606318+00:00 app[web.1]: I, [2020-05-31T01:20:55.606250 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f] Processing by StaticPagesController#home as HTML
2020-05-31T01:20:55.617584+00:00 app[web.1]: I, [2020-05-31T01:20:55.617263 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendering static_pages/home.html.erb within layouts/application
2020-05-31T01:20:55.619591+00:00 app[web.1]: I, [2020-05-31T01:20:55.619476 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendered static_pages/home.html.erb within layouts/application (1.8ms)
2020-05-31T01:20:55.624717+00:00 app[web.1]: I, [2020-05-31T01:20:55.624617 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendered layouts/_rails_default.html.erb (2.8ms)
2020-05-31T01:20:55.626078+00:00 app[web.1]: I, [2020-05-31T01:20:55.625983 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendered layouts/_shim.html.erb (0.4ms)
2020-05-31T01:20:55.631197+00:00 app[web.1]: I, [2020-05-31T01:20:55.631119 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendered layouts/_header.html.erb (4.4ms)
2020-05-31T01:20:55.632564+00:00 app[web.1]: I, [2020-05-31T01:20:55.632492 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f]   Rendered layouts/_footer.html.erb (0.5ms)
2020-05-31T01:20:55.633184+00:00 app[web.1]: I, [2020-05-31T01:20:55.633080 #14]  INFO -- : [a1f5e990-0371-47da-88db-4b1bb113c82f] Completed 200 OK in 27ms (Views: 18.3ms)
2020-05-31T01:20:55.638288+00:00 heroku[router]: at=info method=GET path="/" host=limitless-woodland-81215.herokuapp.com request_id=a1f5e990-0371-47da-88db-4b1bb113c82f fwd="116.30.197.160" dyno=web.1 connect=0ms service=37ms status=200 bytes=2423 protocol=https
2020-05-31T01:20:55.913993+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=limitless-woodland-81215.herokuapp.com request_id=a88fb062-0629-40ba-bf07-825c8d06a3d6 fwd="116.30.197.160" dyno=web.1 connect=0ms service=1ms status=200 bytes=207 protocol=https
2020-05-31T01:20:56.147348+00:00 heroku[router]: at=info method=GET path="/assets/application-9ac67b874939d80f74374a64037b25b8b07248a188a91d2ed7d83b73b2e86ee8.css" host=limitless-woodland-81215.herokuapp.com request_id=1285feba-0608-4d6d-867a-baf379796f9f fwd="116.30.197.160" dyno=web.1 connect=0ms service=1ms status=304 bytes=112 protocol=https
2020-05-31T01:20:56.432873+00:00 heroku[router]: at=info method=GET path="/assets/application-fecb6d9c8279908311dbd3284264b7bb34ffc431488671e284486b936f122783.js" host=limitless-woodland-81215.herokuapp.com request_id=148145ad-89e4-47e9-b9eb-4a8eac8b9f66 fwd="119.123.67.227" dyno=web.1 connect=0ms service=1ms status=304 bytes=112 protocol=https
2020-05-31T01:20:56.462835+00:00 heroku[router]: at=info method=GET path="/assets/application-6cfa2f04bc6ed4a93e9cda4ccaed80edd976aae3a6d1307263650568fdeac1e0.css" host=limitless-woodland-81215.herokuapp.com request_id=a1002760-a972-48a8-a3bf-74c03aa4fa14 fwd="119.123.67.227" dyno=web.1 connect=1ms service=8ms status=200 bytes=21107 protocol=https
2020-05-31T01:21:07.535988+00:00 app[web.1]: I, [2020-05-31T01:21:07.535892 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d] Started GET "/signup" for 119.123.67.227 at 2020-05-31 01:21:07 +0000
2020-05-31T01:21:07.536823+00:00 app[web.1]: I, [2020-05-31T01:21:07.536755 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d] Processing by UsersController#new as HTML
2020-05-31T01:21:07.689826+00:00 app[web.1]: I, [2020-05-31T01:21:07.689698 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]   Rendering users/new.html.erb within layouts/application
2020-05-31T01:21:07.694293+00:00 app[web.1]: I, [2020-05-31T01:21:07.694219 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]   Rendered shared/_error_messages.html.erb (0.6ms)
2020-05-31T01:21:08.395652+00:00 app[web.1]: I, [2020-05-31T01:21:08.395532 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]   Rendered users/_form.html.erb (704.4ms)
2020-05-31T01:21:08.395763+00:00 app[web.1]: I, [2020-05-31T01:21:08.395704 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]   Rendered users/new.html.erb within layouts/application (705.8ms)
2020-05-31T01:21:08.396121+00:00 app[web.1]: I, [2020-05-31T01:21:08.396041 #14]  INFO -- : [e5fa3537-a969-4696-83be-0cedf9f8341d] Completed 500 Internal Server Error in 859ms (ActiveRecord: 96.7ms)
2020-05-31T01:21:08.396873+00:00 app[web.1]: F, [2020-05-31T01:21:08.396811 #14] FATAL -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]
2020-05-31T01:21:08.396930+00:00 app[web.1]: F, [2020-05-31T01:21:08.396876 #14] FATAL -- : [e5fa3537-a969-4696-83be-0cedf9f8341d] ActionView::Template::Error (undefined method `username' for #<User:0x0000562003cf43f0>):
2020-05-31T01:21:08.397175+00:00 app[web.1]: F, [2020-05-31T01:21:08.397085 #14] FATAL -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]     1: <%= form_for(@user) do |f| %>
2020-05-31T01:21:08.397176+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     2:   <%= render 'shared/error_messages', object: @user %>
2020-05-31T01:21:08.397176+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     3:   <%= f.label :username %>
2020-05-31T01:21:08.397177+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     4:   <%= f.text_field :username, class: 'form-control' %>
2020-05-31T01:21:08.397177+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     5:   <%= f.label :phone %>
2020-05-31T01:21:08.397196+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     6:   <%= f.text_field :phone, class: 'form-control' %>
2020-05-31T01:21:08.397196+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d]     7:   <%= f.label :email %>
2020-05-31T01:21:08.397274+00:00 app[web.1]: F, [2020-05-31T01:21:08.397172 #14] FATAL -- : [e5fa3537-a969-4696-83be-0cedf9f8341d]
2020-05-31T01:21:08.397370+00:00 app[web.1]: F, [2020-05-31T01:21:08.397294 #14] FATAL -- : [e5fa3537-a969-4696-83be-0cedf9f8341d] app/views/users/_form.html.erb:4:in `block in _app_views_users__form_html_erb__4023281718931426045_47347749621780'
2020-05-31T01:21:08.397371+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d] app/views/users/_form.html.erb:1:in `_app_views_users__form_html_erb__4023281718931426045_47347749621780'
2020-05-31T01:21:08.397371+00:00 app[web.1]: [e5fa3537-a969-4696-83be-0cedf9f8341d] app/views/users/new.html.erb:6:in `_app_views_users_new_html_erb___3313636642057705402_47347749728700'
2020-05-31T01:21:08.400343+00:00 heroku[router]: at=info method=GET path="/signup" host=limitless-woodland-81215.herokuapp.com request_id=e5fa3537-a969-4696-83be-0cedf9f8341d fwd="119.123.67.227" dyno=web.1 connect=0ms service=864ms status=500 bytes=1891 protocol=https
2020-05-31T01:21:16.711128+00:00 app[web.1]: I, [2020-05-31T01:21:16.711006 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119] Started GET "/" for 119.123.67.227 at 2020-05-31 01:21:16 +0000
2020-05-31T01:21:16.712048+00:00 app[web.1]: I, [2020-05-31T01:21:16.711974 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119] Processing by StaticPagesController#home as HTML
2020-05-31T01:21:16.713870+00:00 app[web.1]: I, [2020-05-31T01:21:16.713787 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendering static_pages/home.html.erb within layouts/application
2020-05-31T01:21:16.714982+00:00 app[web.1]: I, [2020-05-31T01:21:16.714897 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendered static_pages/home.html.erb within layouts/application (1.0ms)
2020-05-31T01:21:16.716034+00:00 app[web.1]: I, [2020-05-31T01:21:16.715955 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendered layouts/_rails_default.html.erb (0.8ms)
2020-05-31T01:21:16.717236+00:00 app[web.1]: I, [2020-05-31T01:21:16.717151 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendered layouts/_shim.html.erb (1.0ms)
2020-05-31T01:21:16.717890+00:00 app[web.1]: I, [2020-05-31T01:21:16.717801 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendered layouts/_header.html.erb (0.4ms)
2020-05-31T01:21:16.718240+00:00 app[web.1]: I, [2020-05-31T01:21:16.718158 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119]   Rendered layouts/_footer.html.erb (0.1ms)
2020-05-31T01:21:16.719507+00:00 app[web.1]: I, [2020-05-31T01:21:16.718541 #10]  INFO -- : [770c97a0-100e-4493-bd72-2a80d7b16119] Completed 200 OK in 6ms (Views: 5.0ms)
2020-05-31T01:21:16.723507+00:00 heroku[router]: at=info method=GET path="/" host=limitless-woodland-81215.herokuapp.com request_id=770c97a0-100e-4493-bd72-2a80d7b16119 fwd="119.123.67.227" dyno=web.1 connect=1ms service=12ms status=200 bytes=2417 protocol=https
2020-05-31T01:21:17.148667+00:00 heroku[router]: at=info method=GET path="/assets/application-6cfa2f04bc6ed4a93e9cda4ccaed80edd976aae3a6d1307263650568fdeac1e0.css" host=limitless-woodland-81215.herokuapp.com request_id=195606df-1155-4f28-8983-aee0b70e3ae8 fwd="119.123.67.227" dyno=web.1 connect=0ms service=1ms status=304 bytes=112 protocol=https
2020-05-31T01:21:17.774503+00:00 heroku[router]: at=info method=GET path="/assets/application-fecb6d9c8279908311dbd3284264b7bb34ffc431488671e284486b936f122783.js" host=limitless-woodland-81215.herokuapp.com request_id=f701a7ac-c8dd-40f6-82cb-33e90d44a275 fwd="119.123.67.227" dyno=web.1 connect=1ms service=2ms status=304 bytes=112 protocol=https

