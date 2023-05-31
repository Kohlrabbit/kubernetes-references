module KubernetesReferences
  class CronJobSpec < KubernetesReferences::API
    # @dynamic concurrency_policy, concurrency_policy=
    attr_accessor :concurrency_policy
    # @dynamic failed_jobs_history_limit, failed_jobs_history_limit=
    attr_accessor :failed_jobs_history_limit
    # @dynamic job_template, job_template=
    attr_accessor :job_template
    # @dynamic schedule, schedule=
    attr_accessor :schedule
    # @dynamic starting_deadline_seconds, starting_deadline_seconds=
    attr_accessor :starting_deadline_seconds
    # @dynamic successful_jobs_history_limit, successful_jobs_history_limit=
    attr_accessor :successful_jobs_history_limit
    # @dynamic suspend, suspend=
    attr_accessor :suspend

    def initialize(obj)
      _set!(obj)
    end
  end
end