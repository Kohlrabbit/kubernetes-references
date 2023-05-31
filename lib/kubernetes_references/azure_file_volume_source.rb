module KubernetesReferences
  class AzureFileVolumeSource < KubernetesReferences::API
    attr_accessor :read_only
    attr_accessor :secret_name
    attr_accessor :share_name

    def initialize(obj)
      _set!(obj)
    end
  end
end