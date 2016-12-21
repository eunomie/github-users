if Rails.env.test? || Rails.env.development?
  begin
    require 'rspec/core/rake_task'
    require 'cucumber/rake/task'

    task test: [:spec, :cucumber]
  rescue LoadError
    desc 'test task not available'
    task :test do
      abort 'rspec or cucumber not available'
    end
  end
end
