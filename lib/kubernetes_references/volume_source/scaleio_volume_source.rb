module KubernetesReferences
  class ScaleIOVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :gateway
    attr_accessor :protection_domain
    attr_accessor :read_only
    attr_accessor :secret_ref
    attr_accessor :ssl_enabled
    attr_accessor :storage_mode
    attr_accessor :storage_pool
    attr_accessor :system
    attr_accessor :volume_name

    def initialize(obj)
      _set!(obj)
    end
  end
end