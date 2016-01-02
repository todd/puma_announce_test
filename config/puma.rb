class TestAnnounce < Struct.new(:thread_id)
  def announce
    while true do
      puts "Current Thread: #{Thread.current.object_id}"
      puts "Spawn Thread:   #{thread_id}"
      puts "Main Thread:    #{Thread.main.object_id}"

      sleep 5
    end
  end
end

# Puma Config
threads 4, 16
workers 2

prune_bundler true

before_fork do
  Thread.new { TestAnnounce.new(Thread.current.object_id).announce }
end
