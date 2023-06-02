module KubernetesReferences
  class ResourceFieldSelector < KubernetesReferences::API
    # @dynamic container_name, container_name=
    attr_accessor :container_name
    # @dynamic divisor, divisor=
    attr_accessor :divisor
    # @dynamic resource, resource=
    attr_accessor :resource

    def initialize(obj)
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