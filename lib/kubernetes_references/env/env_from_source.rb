module KubernetesReferences
  class EnvFromSource < KubernetesReferences::API
    # @dynamic config_map_ref, config_map_ref=
    attr_accessor :config_map_ref
    # @dynamic prefix, prefix=
    attr_accessor :prefix
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref

    def initialize(obj)
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