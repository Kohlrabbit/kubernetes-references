# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#downwardapiprojection-v1-core
  class DownwardAPIProjection < KubernetesReferences::API
    # @dynamic items, items=
    attr_accessor :items

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        items: @items.map(&:schema)
      }
    end
  end
end
