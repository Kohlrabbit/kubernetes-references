# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#downwardapivolumesource-v1-core
  class DownwardAPIVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic items, items=
    attr_accessor :items

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        defaultMode: @default_mode,
        items: @items.map(&:schema)
      }
    end
  end
end
