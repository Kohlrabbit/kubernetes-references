module KubernetesReferences
  class PodIP < KubernetesReferences::API
    # @dynamic ip, ip=
    attr_accessor :ip

    def initialize(obj)
      _set!(obj)
    end
  end
end
