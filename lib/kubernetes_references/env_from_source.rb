module KubernetesReferences
  class EnvFromSource < KubernetesReferences::API
    attr_accessor :config_map_ref
    attr_accessor :prefix
    attr_accessor :secret_ref

    def initialize(obj)
      _set!(obj)
    end
  end
end