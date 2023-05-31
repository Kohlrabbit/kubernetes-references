module KubernetesReferences
  class DaemonSet < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic metadata, metadata=
    attr_accessor :metadata
    # @dynamic spec, spec=
    attr_accessor :spec
    # @dynamic status, status=
    attr_accessor :status

    def initialize(obj)
      _set!(obj)
    end
  end
end