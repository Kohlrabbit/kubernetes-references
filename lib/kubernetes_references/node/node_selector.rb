module KubernetesReferences
  class NodeSelector < KubernetesReferences::API
    attr_accessor :node_selector_terms

    def initialize(obj)
      _set!(obj)
    end
  end
end