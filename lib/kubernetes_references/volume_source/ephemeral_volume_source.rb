# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#ephemeralvolumesource-v1-core
  class EphemeralVolumeSource < KubernetesReferences::API
    # @dynamic volume_claim_template, volume_claim_template=
    attr_accessor :volume_claim_template

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        volumeClaimTemplate: @volume_claim_template.schema
      }
    end
  end
end
