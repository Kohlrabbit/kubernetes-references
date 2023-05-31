module KubernetesReferences
  class ProjectedVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic sources, sources=
    attr_accessor :sources

    def initialize(obj)
      _set!(obj)
    end
  end
end