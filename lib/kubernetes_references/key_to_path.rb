module KubernetesReferences
  class KeyToPath < KubernetesReferences::API
    attr_accessor :key
    attr_accessor :mode
    attr_accessor :path

    def initialize(obj)
      _set!(obj)
    end
  end
end