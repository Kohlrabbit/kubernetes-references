module KubernetesReferences
  class SecretProjection < KubernetesReferences::API
    # @dynamic items, items=
    attr_accessor :items
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end
  end
end