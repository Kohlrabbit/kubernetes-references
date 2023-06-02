# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#labelselector-v1-meta
  class LabelSelector < KubernetesReferences::API
    # @dynamic match_expressions, match_expressions=
    attr_accessor :match_expressions
    # @dynamic match_labels, match_labels=
    attr_accessor :match_labels

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        matchExpressions: @match_expressions.map(&:schema),
        matchLabels: @match_labels
      }
    end
  end
end
