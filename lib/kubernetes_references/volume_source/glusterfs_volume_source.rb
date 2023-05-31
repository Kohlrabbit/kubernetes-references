module KubernetesReferences
  class GlusterfsVolumeSource < KubernetesReferences::API
    # @dynamic endpoints, endpoints=
    attr_accessor :endpoints
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end
