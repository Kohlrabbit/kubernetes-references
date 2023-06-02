# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#configmapkeyselector-v1-core
  class ConfigMapKeySelector < KubernetesReferences::API
    # @dynamic key, key=, name, name=, optional, optional=
    attr_accessor :key
    attr_accessor :name, :optional

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        key: @key,
        name: @name,
        optional: @optional
      }
    end
  end
end
