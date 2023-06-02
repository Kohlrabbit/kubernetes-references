# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#projectedvolumesource-v1-core
  class ProjectedVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic sources, sources=
    attr_accessor :sources

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        defaultMode: @default_mode,
        sources: @sources.map(&:schema)
      }
    end
  end
end
