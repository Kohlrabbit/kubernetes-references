module KubernetesReferences
  class ProjectedVolumeSource < KubernetesReferences::API
    attr_accessor :default_mode
    attr_accessor :sources

    def initialize(obj)
      _set!(obj)
    end
  end
end