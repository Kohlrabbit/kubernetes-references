module KubernetesReferences
  class VolumeProjection < KubernetesReferences::API
    # @dynamic config_map, config_map=
    attr_accessor :config_map
    # @dynamic downward_api, downward_api=
    attr_accessor :downward_api
    # @dynamic secret, secret=
    attr_accessor :secret
    # @dynamic service_account_token, service_account_token=
    attr_accessor :service_account_token

    def initialize(obj)
      _set!(obj)
    end
  end
end