module KubernetesReferences
  class PersistentVolumeClaimVolumeSource < KubernetesReferences::API
    # @dynamic claim_name, claim_name=
    attr_accessor :claim_name
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        claimName: @claim_name,
        readOnly: @read_only
      }
    end
  end
end