# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#configmapprojection-v1-core
  class ConfigMapProjection < KubernetesReferences::API
    # @dynamic items, items=, name, name=, optional, optional=
    attr_accessor :items
    attr_accessor :name, :optional

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
