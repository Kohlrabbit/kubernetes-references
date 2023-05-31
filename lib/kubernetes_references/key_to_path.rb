module KubernetesReferences
  class KeyToPath < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic mode, mode=
    attr_accessor :mode
    # @dynamic path, path=
    attr_accessor :path

    def initialize(obj)
      _set!(obj)
    end
  end
end