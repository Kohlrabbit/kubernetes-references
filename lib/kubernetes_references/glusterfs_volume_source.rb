module KubernetesReferences
  class GlusterfsVolumeSource < KubernetesReferences::API
    attr_accessor :endpoints
    attr_accessor :path
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end
