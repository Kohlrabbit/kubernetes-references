# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#scaleiovolumesource-v1-core
  class ScaleIOVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic gateway, gateway=
    attr_accessor :gateway
    # @dynamic protection_domain, protection_domain=
    attr_accessor :protection_domain
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic ssl_enabled, ssl_enabled=
    attr_accessor :ssl_enabled
    # @dynamic storage_mode, storage_mode=
    attr_accessor :storage_mode
    # @dynamic storage_pool, storage_pool=
    attr_accessor :storage_pool
    # @dynamic system, system=
    attr_accessor :system
    # @dynamic volume_name, volume_name=
    attr_accessor :volume_name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        fsType: @fs_type,
        gateway: @gateway,
        protectionDomain: @protection_domain,
        readOnly: @read_only,
        secretRef: @secret_ref.schema,
        sslEnabled: @ssl_enabled,
        storageMode: @storage_mode,
        storagePool: @storage_pool,
        system: @system,
        volumeName: @volume_name
      }
    end
  end
end
