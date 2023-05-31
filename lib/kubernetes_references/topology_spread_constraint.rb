module KubernetesReferences
  class TopologySpreadConstraint < KubernetesReferences::API
    attr_accessor :label_selector
    attr_accessor :max_skew
    attr_accessor :topology_key
    attr_accessor :when_unsatisfiable

    def initialize(obj)
      _set!(obj)
    end
  end
end