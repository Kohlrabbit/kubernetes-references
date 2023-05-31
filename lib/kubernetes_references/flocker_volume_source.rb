module KubernetesReferences
  class FlockerVolumeSource < KubernetesReferences::API
    attr_accessor :dataset_name
    attr_accessor :dataset_uuid

    def initialize(obj)
      _set!(obj)
    end
  end
end
