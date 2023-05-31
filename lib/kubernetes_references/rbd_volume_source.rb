module KubernetesReferences
  class RBDVolumeSource < KubernetesReferences::API
    attr_accessor :fs_type
    attr_accessor :image
    attr_accessor :keyring
    attr_accessor :monitors
    attr_accessor :pool
    attr_accessor :read_only
    attr_accessor :secret_ref
    attr_accessor :user

    def initialize(obj)
      _set!(obj)
    end
  end
end