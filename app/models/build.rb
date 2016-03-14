class Build < ActiveRecord::Base
  belongs_to :pull_request

  scope :completed, -> { where.not(status: nil) }
  scope :running, -> { where(status: nil) }

  def elapsed_time
    ElapsedTime.new(started_at, finished_at) if completed?
  end

  def completed?
    status and finished_at
  end
end
