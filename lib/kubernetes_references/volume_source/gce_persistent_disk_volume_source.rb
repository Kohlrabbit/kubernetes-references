module KubernetesReferences
  class GCEPersistentDiskVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic partition, partition=
    attr_accessor :partition
    # @dynamic pd_name, pd_name=
    attr_accessor :pd_name
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end