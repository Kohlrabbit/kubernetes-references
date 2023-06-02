module KubernetesReferences
  class SecretKeySelector < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic optional, optional=
    attr_accessor :optional

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        key: @key,
        name: @name,
        optional: @optional
      }
    end
  end
end