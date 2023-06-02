# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#cindervolumesource-v1-core
  class CinderVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
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
        secretRef: @secret_ref.schema,
        volumeID: @volume_id
      }
    end
  end
end
