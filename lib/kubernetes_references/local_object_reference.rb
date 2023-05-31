module KubernetesReferences
  class LocalObjectReference < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end