module KubernetesReferences
  class HostAlias < KubernetesReferences::API
    # @dynamic hostnames, hostnames=
    attr_accessor :hostnames
    # @dynamic ip, ip=
    attr_accessor :ip

    def initialize(obj)
      _set!(obj)
    end
  end
end