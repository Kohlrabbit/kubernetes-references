module KubernetesReferences
  class ConfigMapProjection < KubernetesReferences::API
    # @dynamic items, items=, name, name=, optional, optional=
    attr_accessor :items
    attr_accessor :name
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end
