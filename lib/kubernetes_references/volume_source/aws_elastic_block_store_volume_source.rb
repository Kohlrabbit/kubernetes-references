module KubernetesReferences
  class AWSElasticBlockStoreVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic partition, partition=
    attr_accessor :partition
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic volume_id, volume_id=
    attr_accessor :volume_id

    def initialize(obj)
      _set!(obj)
    end
  end
end