# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#daemonsetspec-v1-apps
  class DaemonSetSpec < KubernetesReferences::API
    # @dynamic min_ready_seconds, min_ready_seconds=
    attr_accessor :min_ready_seconds
    # @dynamic revision_history_limit, revision_history_limit=
    attr_accessor :revision_history_limit
    # @dynamic selector, selector=
    attr_accessor :selector
    # @dynamic template, template=
    attr_accessor :template
    # @dynamic update_strategy, update_strategy=
    attr_accessor :update_strategy

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        minReadySeconds: @min_ready_seconds,
        revisionHistoryLimit: @revision_history_limit,
        selector: @selector.schema,
        template: @template.schema,
        updateStrategy: @update_strategy.schema
      }
    end
  end
end
