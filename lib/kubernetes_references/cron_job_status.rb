module KubernetesReferences
  class CronJobStatus < KubernetesReferences::API
    attr_accessor :active
    attr_accessor :last_schedule_time
    attr_accessor :last_successful_time

    def initialize(obj)
      _set!(obj)
    end
  end
end