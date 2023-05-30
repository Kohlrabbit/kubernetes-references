module KubernetesReferences
  class EnvVarSource < KubernetesReferences::API
    attr_accessor :config_map_key_ref
    attr_accessor :field_ref
    attr_accessor :resource_field_ref
    attr_accessor :secret_key_ref

    def initialize(obj)
      _set!(obj)
    end
  end
end