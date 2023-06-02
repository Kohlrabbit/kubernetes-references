# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#toleration-v1-core
  class Toleration < KubernetesReferences::API
    # @dynamic effect, effect=
    attr_accessor :effect
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic operator, operator=
    attr_accessor :operator
    # @dynamic toleration_seconds, toleration_seconds=
    attr_accessor :toleration_seconds
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        effect: @effect,
        key: @key,
        operator: @operator,
        tolerationSeconds: @toleration_seconds,
        value: @value
      }
    end
  end
end
