module KubernetesReferences
  class NodeSelectorTerm < KubernetesReferences::API
    # @dynamic match_expressions, match_expressions=
    attr_accessor :match_expressions
    # @dynamic match_fields, match_fields=
    attr_accessor :match_fields

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        matchExpressions: @match_expressions.map{|r| r.schema},
        matchFields: @match_fields.map{|r| r.schema}
      }
    end
  end
end