module KubernetesReferences
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
      _set!(obj)
    end
  end
end