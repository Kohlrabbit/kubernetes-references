module KubernetesReferences
  class PodDNSConfigOption < KubernetesReferences::API
    attr_accessor :name
    attr_accessor :value

    def initialize(obj)
      _set!(obj)
    end
  end
end