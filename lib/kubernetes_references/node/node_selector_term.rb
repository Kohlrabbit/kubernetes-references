module KubernetesReferences
  class NodeSelectorTerm < KubernetesReferences::API
    attr_accessor :match_expressions
    attr_accessor :match_fields

    def initialize(obj)
      _set!(obj)
    end
  end
end