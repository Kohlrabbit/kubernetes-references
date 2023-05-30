module KubernetesReferences
  class ResourceFieldSelector < KubernetesReferences::API
    attr_accessor :container_name
    attr_accessor :divisor
    attr_accessor :resource

    def initialize(obj)
      _set!(obj)
    end
  end
end