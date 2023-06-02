module KubernetesReferences
  class LabelSelector < KubernetesReferences::API
    # @dynamic match_expressions, match_expressions=
    attr_accessor :match_expressions
    # @dynamic match_labels, match_labels=
    attr_accessor :match_labels

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        matchExpressions: @match_expressions.map{|r| r.schema},
        matchLabels: @match_labels
      }
    end
  end
end