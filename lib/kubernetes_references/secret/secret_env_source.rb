# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#secretenvsource-v1-core
  class SecretEnvSource < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
    attr_accessor :optional

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        name: @name,
        optional: @optional
      }
    end
  end
end
