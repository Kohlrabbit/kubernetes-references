module KubernetesReferences
  class WeightedPodAffinityTerm < KubernetesReferences::API
    # @dynamic pod_affinity_term, pod_affinity_term=
    attr_accessor :pod_affinity_term
    # @dynamic weight, weight=
    attr_accessor :weight

    def initialize(obj)
      _set!(obj)
    end
  end
end