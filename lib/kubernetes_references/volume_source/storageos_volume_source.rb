module KubernetesReferences
  class StorageOSVolumeSource < KubernetesReferences::API
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic volume_name, volume_name=
    attr_accessor :volume_name
    # @dynamic volume_namespace, volume_namespace=
    attr_accessor :volume_namespace

    def initialize(obj)
      _set!(obj)
    end
  end
end
