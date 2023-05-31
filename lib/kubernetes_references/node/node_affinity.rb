module KubernetesReferences
  class NodeAffinity < KubernetesReferences::API
    attr_accessor :preferred_during_scheduling_ignored_during_execution
    attr_accessor :required_during_scheduling_ignored_during_execution

    def initialize(obj)
      _set!(obj)
    end
  end
end