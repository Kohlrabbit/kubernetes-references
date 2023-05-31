module KubernetesReferences
  class EphemeralVolumeSource < KubernetesReferences::API
    attr_accessor :volume_claim_template

    def initialize(obj)
      _set!(obj)
    end
  end
end