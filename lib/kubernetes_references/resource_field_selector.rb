# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#resourcefieldselector-v1-core
  class ResourceFieldSelector < KubernetesReferences::API
    # @dynamic container_name, container_name=
    attr_accessor :container_name
    # @dynamic divisor, divisor=
    attr_accessor :divisor
    # @dynamic resource, resource=
    attr_accessor :resource

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        containerName: @container_name,
        divisor: @divisor.schema,
        resource: @resource
      }
    end
  end
end
