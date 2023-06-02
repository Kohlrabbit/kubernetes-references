# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#fcvolumesource-v1-core
  class FCVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic lun, lun=
    attr_accessor :lun
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic target_wwns, target_wwns=
    attr_accessor :target_wwns
    # @dynamic wwids, wwids=
    attr_accessor :wwids

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        lun: @lun,
        readOnly: @read_only,
        targetWWNs: @target_wwns,
        wwids: @wwids
      }
    end
  end
end
