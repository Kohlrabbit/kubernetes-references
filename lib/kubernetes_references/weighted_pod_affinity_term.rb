module KubernetesReferences
  class WeightedPodAffinityTerm < KubernetesReferences::API
    attr_accessor :pod_affinity_term
    attr_accessor :weight

    def initialize(obj)
      _set!(obj)
    end
  end
end