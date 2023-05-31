module KubernetesReferences
  class NFSVolumeSource < KubernetesReferences::API
    attr_accessor :path
    attr_accessor :read_only
    attr_accessor :server

    def initialize(obj)
      _set!(obj)
    end
  end
end