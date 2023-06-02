# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#sysctl-v1-core
  class Sysctl < KubernetesReferences::API
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
