module KubernetesReferences
  class NodeSelector < KubernetesReferences::API
    # @dynamic node_selector_terms, node_selector_terms=
    attr_accessor :node_selector_terms

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        nodeSelectorTerms: @node_selector_terms.map{|r| r.schema}
      }
    end
  end
end