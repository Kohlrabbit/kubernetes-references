module KubernetesReferences
  class CronJobSpec < KubernetesReferences::API
    attr_accessor :concurrency_policy
    attr_accessor :failed_jobs_history_limit
    attr_accessor :job_template
    attr_accessor :schedule
    attr_accessor :starting_deadline_seconds
    attr_accessor :successful_jobs_history_limit
    attr_accessor :suspend

    def initialize(obj)
      _set!(obj)
    end
  end
end