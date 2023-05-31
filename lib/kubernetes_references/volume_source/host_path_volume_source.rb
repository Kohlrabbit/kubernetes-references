module KubernetesReferences
  class HostPathVolumeSource < KubernetesReferences::API
    attr_accessor :path
    attr_accessor :type

    def initialize(obj)
      _set!(obj)
    end
  end
end