module KubernetesReferences
  class VolumeDevice < KubernetesReferences::API
    attr_accessor :device_path
    attr_accessor :name

    def initialize(obj)
      _set!(obj)
    end
  end
end