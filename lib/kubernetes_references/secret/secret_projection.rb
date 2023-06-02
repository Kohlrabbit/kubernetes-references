# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#secretprojection-v1-core
  class SecretProjection < KubernetesReferences::API
    # @dynamic items, items=
    attr_accessor :items
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
        items: @items.map(&:schema),
        name: @name,
        optional: @optional
      }
    end
  end
end
