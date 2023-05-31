module KubernetesReferences
  class PhotonPersistentDiskVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :pd_id

    def initialize(obj)
      _set!(obj)
    end
  end
end