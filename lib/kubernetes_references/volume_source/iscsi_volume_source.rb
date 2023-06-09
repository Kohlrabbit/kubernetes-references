# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#iscsivolumesource-v1-core
  class ISCSIVolumeSource < KubernetesReferences::API
    # @dynamic chap_auth_discovery, chap_auth_discovery=
    attr_accessor :chap_auth_discovery
    # @dynamic chap_auth_session, chap_auth_session=
    attr_accessor :chap_auth_session
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic initiator_name, initiator_name=
    attr_accessor :initiator_name
    # @dynamic iqn, iqn=
    attr_accessor :iqn
    # @dynamic iscsi_interface, iscsi_interface=
    attr_accessor :iscsi_interface
    # @dynamic lun, lun=
    attr_accessor :lun
    # @dynamic portals, portals=
    attr_accessor :portals
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic target_portal, target_portal=
    attr_accessor :target_portal

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        chapAuthDiscovery: @chap_auth_discovery,
        chapAuthSession: @chap_auth_session,
        fsType: @fs_type,
        initiatorName: @initiator_name,
        iqn: @iqn,
        iscsiInterface: @iscsi_interface,
        lun: @lun,
        portals: @portals,
        readOnly: @read_only,
        secretRef: @secret_ref.schema,
        targetPortal: @target_portal
      }
    end
  end
end
