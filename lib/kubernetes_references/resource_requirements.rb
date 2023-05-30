module KubernetesReferences
  class ResourceRequirements < KubernetesReferences::API
    attr_accessor :limits
    attr_accessor :requests

    def initialize(obj)
      _set!(obj)
    end
  end
end