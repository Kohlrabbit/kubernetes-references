module KubernetesReferences
  class FCVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :lun
    attr_accessor :read_only
    attr_accessor :target_wwns
    attr_accessor :wwids

    def initialize(obj)
      _set!(obj)
    end
  end
end