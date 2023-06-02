# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#gcepersistentdiskvolumesource-v1-core
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
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        partition: @partition,
        pdName: @pd_name,
        readOnly: @read_only
      }
    end
  end
end
