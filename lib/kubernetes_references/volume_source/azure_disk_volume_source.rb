# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#azurediskvolumesource-v1-core
  class AzureDiskVolumeSource < KubernetesReferences::API
    # @dynamic caching_mode, caching_mode=
    attr_accessor :caching_mode
    # @dynamic disk_name, disk_name=
    attr_accessor :disk_name
    # @dynamic disk_uri, disk_uri=
    attr_accessor :disk_uri
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        cachingMode: @caching_mode,
        diskName: @disk_name,
        diskURI: @disk_uri,
        fsType: @fs_type,
        kind: @kind,
        readOnly: @read_only
      }
    end
  end
end
