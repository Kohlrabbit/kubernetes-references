module KubernetesReferences
  class ISCSIVolumeSource < KubernetesReferences::API
    attr_accessor :chap_auth_discovery
    attr_accessor :chap_auth_session
    attr_accessor :fs_type
    attr_accessor :initiator_name
    attr_accessor :iqn
    attr_accessor :iscsi_interface
    attr_accessor :lun
    attr_accessor :portals
    attr_accessor :read_only
    attr_accessor :secret_ref
    attr_accessor :target_portal

    def initialize(obj)
      _set!(obj)
    end
  end
end