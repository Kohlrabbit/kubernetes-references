module KubernetesReferences
  class SeccompProfile < KubernetesReferences::API
    # @dynamic localhost_profile, localhost_profile=
    attr_accessor :localhost_profile
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      _set!(obj)
    end
  end
end