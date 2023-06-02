# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#volumeprojection-v1-core
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
      super()
      _set!(obj)
    end

    def _schema
      {
        configMap: @config_map.schema,
        downwardApi: @downward_api.schema,
        secret: @secret.schema,
        serviceAccountToken: @service_account_token.schema
      }
    end
  end
end
