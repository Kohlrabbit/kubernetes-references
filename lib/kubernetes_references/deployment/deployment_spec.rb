# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#deploymentspec-v1-apps
  class DeploymentSpec < KubernetesReferences::API
    # @dynamic min_ready_seconds, min_ready_seconds=
    attr_accessor :min_ready_seconds
    # @dynamic paused, paused=
    attr_accessor :paused
    # @dynamic progress_deadline_seconds, progress_deadline_seconds=
    attr_accessor :progress_deadline_seconds
    # @dynamic replicas, replicas=
    attr_accessor :replicas
    # @dynamic revision_history_limit, revision_history_limit=
    attr_accessor :revision_history_limit
    # @dynamic selector, selector=
    attr_accessor :selector
    # @dynamic strategy, strategy=
    attr_accessor :strategy
    # @dynamic template, template=
    attr_accessor :template

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        minReadySeconds: @min_ready_seconds,
        paused: @paused,
        progressDeadlineSeconds: @progress_deadline_seconds,
        replicas: @replicas,
        revisionHistoryLimit: @revision_history_limit,
        selector: @selector.schema,
        strategy: @strategy.schema,
        template: @template.schema
      }
    end
  end
end
