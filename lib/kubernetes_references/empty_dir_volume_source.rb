module KubernetesReferences
  class EmptyDirVolumeSource < KubernetesReferences::API
    attr_accessor :medium
    attr_accessor :size_limit

    def initialize(obj)
      _set!(obj)
    end
  end
end