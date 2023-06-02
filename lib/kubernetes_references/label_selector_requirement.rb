# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#labelselectorrequirement-v1-meta
  class LabelSelectorRequirement < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic operator, operator=
    attr_accessor :operator
    # @dynamic values, values=
    attr_accessor :values

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        key: @key,
        operator: @operator,
        values: @values
      }
    end
  end
end
