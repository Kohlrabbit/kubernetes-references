# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#quantity-resource-core
  class Quantity < KubernetesReferences::API
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      super()
      _set!(obj)
    end

    def to_json(*_args)
      # TODO: implement requirements from Kubernetes doc
      # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#quantity-resource-core
    end

    def _schema
      @value
    end
  end
end
