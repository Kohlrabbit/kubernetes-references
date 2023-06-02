# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#glusterfsvolumesource-v1-core
  class GlusterfsVolumeSource < KubernetesReferences::API
    # @dynamic endpoints, endpoints=
    attr_accessor :endpoints
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        endpoints: @endpoints,
        path: @path,
        readOnly: @read_only
      }
    end
  end
end
