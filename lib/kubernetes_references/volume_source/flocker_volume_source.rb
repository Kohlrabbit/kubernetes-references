module KubernetesReferences
  class FlockerVolumeSource < KubernetesReferences::API
    # @dynamic dataset_name, dataset_name=
    attr_accessor :dataset_name
    # @dynamic dataset_uuid, dataset_uuid=
    attr_accessor :dataset_uuid

    def initialize(obj)
      _set!(obj)
    end
  end
end
