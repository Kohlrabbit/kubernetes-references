module KubernetesReferences
  class SecretVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic items, items=
    attr_accessor :items
    # @dynamic optional, optional=
    attr_accessor :optional
    # @dynamic secret_name, secret_name=
    attr_accessor :secret_name

    def initialize(obj)
      _set!(obj)
    end
  end
end