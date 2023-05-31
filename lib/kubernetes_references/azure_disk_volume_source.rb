module KubernetesReferences
  class AzureDiskVolumeSource < KubernetesReferences::API
    attr_accessor :caching_mode
    attr_accessor :disk_name
    attr_accessor :disk_uri
    attr_accessor :fs_type
    attr_accessor :kind
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end