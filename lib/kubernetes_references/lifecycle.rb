# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#lifecycle-v1-core
  class Lifecycle < KubernetesReferences::API
    # @dynamic post_start, post_start=
    attr_accessor :post_start
    # @dynamic pre_stop, pre_stop=
    attr_accessor :pre_stop

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        postStart: @post_start.schema,
        preStop: @pre_stop.schema
      }
    end
  end
end
