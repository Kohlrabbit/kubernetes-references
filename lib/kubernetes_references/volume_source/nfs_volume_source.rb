# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#nfsvolumesource-v1-core
  class NFSVolumeSource < KubernetesReferences::API
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic server, server=
    attr_accessor :server

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        path: @path,
        readOnly: @read_only,
        server: @server
      }
    end
  end
end
