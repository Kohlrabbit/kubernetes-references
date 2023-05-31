module KubernetesReferences
  class NodeSelectorRequirement < KubernetesReferences::API
    attr_accessor :key
    attr_accessor :operator
    attr_accessor :values

    def initialize(obj)
      _set!(obj)
    end
  end
end