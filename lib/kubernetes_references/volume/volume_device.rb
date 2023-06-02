module KubernetesReferences
  class VolumeDevice < KubernetesReferences::API
    # @dynamic device_path, device_path=
    attr_accessor :device_path
    # @dynamic name, name=
    attr_accessor :name

    def initialize(obj)
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