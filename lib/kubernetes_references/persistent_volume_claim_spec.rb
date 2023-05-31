module KubernetesReferences
  class PersistentVolumeClaimSpec < KubernetesReferences::API
    attr_accessor :access_modes
    attr_accessor :data_source
    attr_accessor :data_source_ref
    attr_accessor :resources
    attr_accessor :selector
    attr_accessor :storage_class_name
    attr_accessor :volume_mode
    attr_accessor :volume_name

    def initialize(obj)
      _set!(obj)
    end
  end
end