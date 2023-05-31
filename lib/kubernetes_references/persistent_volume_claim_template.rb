module KubernetesReferences
  class PersistentVolumeClaimTemplate < KubernetesReferences::API
    # @dynamic metadata, metadata=
    attr_accessor :metadata
    # @dynamic spec, spec=
    attr_accessor :spec

    def initialize(obj)
      _set!(obj)
    end
  end
end