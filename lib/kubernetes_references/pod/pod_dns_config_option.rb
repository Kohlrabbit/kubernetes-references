module KubernetesReferences
  class PodDNSConfigOption < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic value, value=
    attr_accessor :value

    def initialize(obj)
      _set!(obj)
    end
  end
end