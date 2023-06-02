# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#nodeselectorterm-v1-core
  class NodeSelectorTerm < KubernetesReferences::API
    # @dynamic match_expressions, match_expressions=
    attr_accessor :match_expressions
    # @dynamic match_fields, match_fields=
    attr_accessor :match_fields

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        matchExpressions: @match_expressions.map(&:schema),
        matchFields: @match_fields.map(&:schema)
      }
    end
  end
end
