module KubernetesReferences
  class CephFSVolumeSource < KubernetesReferences::API
    attr_accessor :monitors
    attr_accessor :path
    attr_accessor :read_only
    attr_accessor :secret_file
    attr_accessor :secret_ref
    attr_accessor :user

    def initialize(obj)
      _set!(obj)
    end
  end
end