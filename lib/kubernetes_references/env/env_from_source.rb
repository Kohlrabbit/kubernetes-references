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
  end
end