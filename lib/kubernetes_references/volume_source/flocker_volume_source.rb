# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#flockervolumesource-v1-core
  class FlockerVolumeSource < KubernetesReferences::API
    # @dynamic dataset_name, dataset_name=
    attr_accessor :dataset_name
    # @dynamic dataset_uuid, dataset_uuid=
    attr_accessor :dataset_uuid

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        datasetName: @dataset_name,
        datasetUUID: @dataset_uuid
      }
    end
  end
end
