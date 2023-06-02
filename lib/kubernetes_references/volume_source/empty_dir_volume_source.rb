# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#emptydirvolumesource-v1-core
  class EmptyDirVolumeSource < KubernetesReferences::API
    # @dynamic medium, medium=
    attr_accessor :medium
    # @dynamic size_limit, size_limit=
    attr_accessor :size_limit

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        medium: @medium,
        sizeLimit: @size_limit.schema
      }
    end
  end
end
