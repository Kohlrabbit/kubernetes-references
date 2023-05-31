module KubernetesReferences
  class Affinity < KubernetesReferences::API
    attr_accessor :node_affinity
    attr_accessor :pod_affinity
    attr_accessor :pod_anti_affinity

    def initialize(obj)
      _set!(obj)
    end
  end
end