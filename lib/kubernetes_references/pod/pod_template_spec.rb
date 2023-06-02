module KubernetesReferences
  class PodTemplateSpec < KubernetesReferences::API
    # @dynamic metadata, metadata=
    attr_accessor :metadata
    # @dynamic spec, spec=
    attr_accessor :spec

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        metadata: @metadata.schema,
        spec: @spec.schema
      }
    end
  end
end