class HardJob
  include Sidekiq::Job

  def perform(*args)
    HardJob.perform_async('bob', 5)
    HardJob.perform_in(5.minutes, 'bob', 5)
    HardJob.perform_at(5.minutes.from_now, 'bob', 5)
  end
end
