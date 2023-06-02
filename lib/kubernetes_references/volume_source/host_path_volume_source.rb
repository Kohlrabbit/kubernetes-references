# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#hostpathvolumesource-v1-core
  class HostPathVolumeSource < KubernetesReferences::API
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        path: @path,
        type: @type
      }
    end
  end
end
