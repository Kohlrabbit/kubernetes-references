# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#azurefilevolumesource-v1-core
  class AzureFileVolumeSource < KubernetesReferences::API
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_name, secret_name=
    attr_accessor :secret_name
    # @dynamic share_name, share_name=
    attr_accessor :share_name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        readOnly: @read_only,
        secretName: @secret_name,
        shareName: @share_name
      }
    end
  end
end
