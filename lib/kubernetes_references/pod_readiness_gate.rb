module KubernetesReferences
  class PodReadinessGate < KubernetesReferences::API
    attr_accessor :condition_type

    def initialize(obj)
      _set!(obj)
    end
  end
end