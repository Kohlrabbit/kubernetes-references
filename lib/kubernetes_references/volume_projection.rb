module KubernetesReferences
  class VolumeProjection < KubernetesReferences::API
    attr_accessor :config_map
    attr_accessor :downward_api
    attr_accessor :secret
    attr_accessor :service_account_token

    def initialize(obj)
      _set!(obj)
    end
  end
end