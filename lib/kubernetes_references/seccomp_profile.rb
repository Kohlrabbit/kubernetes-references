module KubernetesReferences
  class SeccompProfile < KubernetesReferences::API
    attr_accessor :localhost_profile
    attr_accessor :type

    def initialize(obj)
      _set!(obj)
    end
  end
end