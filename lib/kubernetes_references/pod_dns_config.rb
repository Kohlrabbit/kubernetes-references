module KubernetesReferences
  class PodDNSConfig < KubernetesReferences::API
    attr_accessor :nameservers
    attr_accessor :options
    attr_accessor :searches

    def initialize(obj)
      _set!(obj)
    end
  end
end