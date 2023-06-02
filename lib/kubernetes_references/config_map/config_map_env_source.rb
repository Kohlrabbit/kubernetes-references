# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#configmapenvsource-v1-core
  class ConfigMapEnvSource < KubernetesReferences::API
    # @dynamic name, name=, optional, optional=
    attr_accessor :name
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
