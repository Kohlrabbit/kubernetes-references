# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#persistentvolumeclaimvolumesource-v1-core
  class PersistentVolumeClaimVolumeSource < KubernetesReferences::API
    # @dynamic claim_name, claim_name=
    attr_accessor :claim_name
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      super()
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
