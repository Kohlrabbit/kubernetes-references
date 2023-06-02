# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#secretvolumesource-v1-core
  class SecretVolumeSource < KubernetesReferences::API
    # @dynamic default_mode, default_mode=
    attr_accessor :default_mode
    # @dynamic items, items=
    attr_accessor :items
    # @dynamic optional, optional=
    attr_accessor :optional
    # @dynamic secret_name, secret_name=
    attr_accessor :secret_name

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        defaultMode: @default_mode,
        items: @items.map(&:schema),
        optional: @optional,
        secretName: @secret_name
      }
    end
  end
end
