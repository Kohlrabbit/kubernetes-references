module KubernetesReferences
  class PodOS < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end