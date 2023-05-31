module KubernetesReferences
  class CephFSVolumeSource < KubernetesReferences::API
    # @dynamic monitors, monitors=
    attr_accessor :monitors
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_file, secret_file=
    attr_accessor :secret_file
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref
    # @dynamic user, user=
    attr_accessor :user

    def initialize(obj)
      _set!(obj)
    end
  end
end