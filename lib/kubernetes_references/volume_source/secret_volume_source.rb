module KubernetesReferences
  class SecretVolumeSource < KubernetesReferences::API
    attr_accessor :default_mode
    attr_accessor :items
    attr_accessor :optional
    attr_accessor :secret_name

    def initialize(obj)
      _set!(obj)
    end
  end
end