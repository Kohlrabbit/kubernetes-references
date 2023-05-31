module KubernetesReferences
  class NFSVolumeSource < KubernetesReferences::API
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic server, server=
    attr_accessor :server

    def initialize(obj)
      _set!(obj)
    end
  end
end