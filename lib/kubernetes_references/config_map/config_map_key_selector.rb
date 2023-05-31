module KubernetesReferences
  class ConfigMapKeySelector < KubernetesReferences::API
    # @dynamic key, key=, name, name=, optional, optional=
    attr_accessor :key
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end