# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#secretkeyselector-v1-core
  class SecretKeySelector < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
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
        key: @key,
        name: @name,
        optional: @optional
      }
    end
  end
end
