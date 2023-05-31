module KubernetesReferences
  class PodAffinityTerm < KubernetesReferences::API
    attr_accessor :label_selector
    attr_accessor :namespace_selector
    attr_accessor :namespaces
    attr_accessor :topology_key

    def initialize(obj)
      _set!(obj)
    end
  end
end