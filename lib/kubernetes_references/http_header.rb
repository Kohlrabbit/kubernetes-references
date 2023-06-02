# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#httpheader-v1-core
  class HTTPHeader < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        name: @name,
        value: @value
      }
    end
  end
end
