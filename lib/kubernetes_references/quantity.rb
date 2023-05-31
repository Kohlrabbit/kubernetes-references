module KubernetesReferences
  class Quantity < KubernetesReferences::API
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      _set!(obj)
    end

    def to_json
      # todo: implement requirements from Kubernetes doc
      # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#quantity-resource-core
    end
  end
end
