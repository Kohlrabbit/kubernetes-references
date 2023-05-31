module KubernetesReferences
  class AzureFileVolumeSource < KubernetesReferences::API
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_name, secret_name=
    attr_accessor :secret_name
    # @dynamic share_name, share_name=
    attr_accessor :share_name

    def initialize(obj)
      _set!(obj)
    end
  end
end