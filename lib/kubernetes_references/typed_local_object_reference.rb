module KubernetesReferences
  class TypedLocalObjectReference < KubernetesReferences::API
    attr_accessor :api_group
    attr_accessor :kind
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end