module KubernetesReferences
  class Capabilities < KubernetesReferences::API
    # @dynamic add, add=, drop, drop=
    attr_accessor :add
    attr_accessor :drop

    def initialize(obj)
      _set!(obj)
    end
  end
end