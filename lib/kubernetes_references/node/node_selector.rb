# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#nodeselector-v1-core
  class NodeSelector < KubernetesReferences::API
    # @dynamic node_selector_terms, node_selector_terms=
    attr_accessor :node_selector_terms

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        nodeSelectorTerms: @node_selector_terms.map(&:schema)
      }
    end
  end
end
