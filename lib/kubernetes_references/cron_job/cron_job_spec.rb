# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#cronjobspec-v1-batch
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
      super()
      _set!(obj)
    end

    def _schema
      {
        concurrencyPolicy: @concurrency_policy,
        failedJobsHistoryLimit: @failed_jobs_history_limit,
        jobTemplate: @job_template.schema,
        schedule: @schedule,
        startingDeadlineSeconds: @starting_deadline_seconds,
        successfulJobsHistoryLimit: @successful_jobs_history_limit,
        suspend: @suspend
      }
    end
  end
end
