# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#jobspec-v1-batch
  class JobSpec < KubernetesReferences::API
    # @dynamic active_deadline_seconds, active_deadline_seconds=
    attr_accessor :active_deadline_seconds
    # @dynamic backoff_limit, backoff_limit=
    attr_accessor :backoff_limit
    # @dynamic completion_mode, completion_mode=
    attr_accessor :completion_mode
    # @dynamic completions, completions=
    attr_accessor :completions
    # @dynamic manual_selector, manual_selector=
    attr_accessor :manual_selector
    # @dynamic parallelism, parallelism=
    attr_accessor :parallelism
    # @dynamic selector, selector=
    attr_accessor :selector
    # @dynamic suspend, suspend=
    attr_accessor :suspend
    # @dynamic template, template=
    attr_accessor :template
    # @dynamic ttl_seconds_after_finished, ttl_seconds_after_finished=
    attr_accessor :ttl_seconds_after_finished

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        activeDeadlineSeconds: @active_deadline_seconds,
        backoffLimit: @backoff_limit,
        completionMode: @completion_mode,
        completions: @completions,
        manualSelector: @manual_selector,
        parallelism: @parallelism,
        selector: @selector.schema,
        suspend: @suspend,
        template: @template.schema,
        ttlSecondsAfterFinished: @ttl_seconds_after_finished
      }
    end
  end
end
