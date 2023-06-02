# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#cronjobstatus-v1-batch
  class CronJobStatus < KubernetesReferences::API
    # @dynamic active, active=
    attr_accessor :active
    # @dynamic last_schedule_time, last_schedule_time=
    attr_accessor :last_schedule_time
    # @dynamic last_successful_time, last_successful_time=
    attr_accessor :last_successful_time

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        active: @active,
        lastScheduleTime: @last_schedule_time,
        lastSuccessfulTime: @last_successful_time
      }
    end
  end
end
