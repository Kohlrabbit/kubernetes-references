module KubernetesReferences
  class CronJobStatus < KubernetesReferences::API
    # @dynamic active, active=
    attr_accessor :active
    # @dynamic last_schedule_time, last_schedule_time=
    attr_accessor :last_schedule_time
    # @dynamic last_successful_time, last_successful_time=
    attr_accessor :last_successful_time

    def initialize(obj)
      _set!(obj)
    end
  end
end