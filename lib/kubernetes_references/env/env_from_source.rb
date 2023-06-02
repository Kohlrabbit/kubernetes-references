# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#envfromsource-v1-core
  class EnvFromSource < KubernetesReferences::API
    # @dynamic config_map_ref, config_map_ref=
    attr_accessor :config_map_ref
    # @dynamic prefix, prefix=
    attr_accessor :prefix
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        configMapRef: @config_map_ref.schema,
        prefix: @prefix,
        secretRef: @secret_ref.schema
      }
    end
  end
end
