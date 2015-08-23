God.watch do |w|
  w.name = "jobs"
  w.dir = '/var/www/sharetribe'
  w.env = { 'RAILS_ROOT' => "/var/www/sharetribe",
            'RAILS_ENV' => "production" }
  w.start = "bundle exec rake RAILS_ENV=production jobs:work"
  w.keepalive
end

