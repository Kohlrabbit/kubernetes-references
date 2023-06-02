# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#capabilities-v1-core
  class Capabilities < KubernetesReferences::API
    # @dynamic add, add=, drop, drop=
    attr_accessor :add
    attr_accessor :drop

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        add: @add,
        drop: @drop
      }
    end
  end
end
