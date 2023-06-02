# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#portworxvolumesource-v1-core
  class PortworxVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic volume_id, volume_id=
    attr_accessor :volume_id

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        readOnly: @read_only,
        volumeID: @volume_id
      }
    end
  end
end
