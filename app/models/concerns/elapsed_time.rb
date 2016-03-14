class ElapsedTime
  extend ActiveSupport::Concern
  attr_reader :started_at, :finished_at, :diff

  def initialize(started_at, finished_at)
    @started_at = started_at
    @finished_at = finished_at
    @diff = Time.zone.at(@finished_at - @started_at)
  end

  def days
    @diff.day-1
  end

  def hours
    @diff.hour
  end

  def minutes
    @diff.min
  end

  def seconds
    @diff.sec
  end

  def to_s
    elapsed_time_string = [
      "#{days} days",
      "#{hours} hours",
      "#{minutes} minutes",
      "#{seconds} seconds"
    ]

    elapsed_time_string.select { |s| !s.starts_with? "0" }.join(", ")
  end

end
