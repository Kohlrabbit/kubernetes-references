module KubernetesReferences
  class PersistentVolumeClaimVolumeSource < KubernetesReferences::API
    attr_accessor :claim_name
    attr_accessor :read_only

    def initialize(obj)
      _set!(obj)
    end
  end
end