module KubernetesReferences
  class EmptyDirVolumeSource < KubernetesReferences::API
    # @dynamic medium, medium=
    attr_accessor :medium
    # @dynamic size_limit, size_limit=
    attr_accessor :size_limit

    def initialize(obj)
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