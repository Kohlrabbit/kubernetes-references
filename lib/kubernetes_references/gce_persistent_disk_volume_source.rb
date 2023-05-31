module KubernetesReferences
  class GCEPersistentDiskVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :partition
    attr_accessor :pd_name
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end