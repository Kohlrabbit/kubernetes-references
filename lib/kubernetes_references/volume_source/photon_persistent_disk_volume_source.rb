module KubernetesReferences
  class PhotonPersistentDiskVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic pd_id, pd_id=
    attr_accessor :pd_id

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        pdID: @pd_id
      }
    end
  end
end