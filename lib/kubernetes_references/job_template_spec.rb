# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#jobtemplatespec-v1-batch
  class JobTemplateSpec < KubernetesReferences::API
    # @dynamic metadata, metadata=
    attr_accessor :metadata
    # @dynamic spec, spec=
    attr_accessor :spec

    def initialize(obj)
      super()
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
