# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#volumedevice-v1-core
  class VolumeDevice < KubernetesReferences::API
    # @dynamic device_path, device_path=
    attr_accessor :device_path
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        devicePath: @device_path,
        name: @name
      }
    end
  end
end
