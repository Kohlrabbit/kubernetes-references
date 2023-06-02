module KubernetesReferences
  class SecretEnvSource < KubernetesReferences::API
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        name: @name,
        optional: @optional
      }
    end
  end
end
