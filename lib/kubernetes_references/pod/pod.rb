module KubernetesReferences
  class Pod < KubernetesReferences::API
    # @dynamic api_version, api_version= 
    attr_accessor :api_version
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic metadata, metadata=
    attr_accessor :metadata
    # @dynamic spec, spec=
    attr_accessor :spec
    # @dynamic status, status=
    attr_accessor :status

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        apiVersion: @api_version,
        kind: @kind,
        metadata: @metadata.schema,
        spec: @spec.schema,
        status: @status.schema
      }
    end
  end
end
