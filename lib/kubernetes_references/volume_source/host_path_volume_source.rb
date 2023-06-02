module KubernetesReferences
  class HostPathVolumeSource < KubernetesReferences::API
    # @dynamic path, path=
    attr_accessor :path
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
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