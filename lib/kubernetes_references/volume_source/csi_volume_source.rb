# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#csivolumesource-v1-core
  class CSIVolumeSource < KubernetesReferences::API
    # @dynamic driver, driver=
    attr_accessor :driver
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic node_publish_secret_ref, node_publish_secret_ref=
    attr_accessor :node_publish_secret_ref
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic volume_attributes, volume_attributes=
    attr_accessor :volume_attributes

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        driver: @driver,
        fsType: @fs_type,
        nodePublishSecretRef: @node_publish_secret_ref.schema,
        readOnly: @read_only,
        volumeAttributes: @volume_attributes
      }
    end
  end
end
