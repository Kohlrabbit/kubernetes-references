# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#objectfieldselector-v1-core
  class ObjectFieldSelector < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic field_path, field_path=
    attr_accessor :field_path

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        apiVersion: @api_version,
        fieldPath: @field_path
      }
    end
  end
end
