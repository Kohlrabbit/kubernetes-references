module KubernetesReferences
  class HostAlias < KubernetesReferences::API
    attr_accessor :hostnames
    attr_accessor :ip

    def initialize(obj)
      _set!(obj)
    end
  end
end