module KubernetesReferences
  class EphemeralVolumeSource < KubernetesReferences::API
    # @dynamic volume_claim_template, volume_claim_template=
    attr_accessor :volume_claim_template

    def initialize(obj)
      _set!(obj)
    end
  end
end