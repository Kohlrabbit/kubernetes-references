module KubernetesReferences
  class ConfigMapKeySelector < KubernetesReferences::API
    attr_accessor :key
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end