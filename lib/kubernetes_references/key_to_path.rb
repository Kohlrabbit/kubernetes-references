# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#keytopath-v1-core
  class KeyToPath < KubernetesReferences::API
    # @dynamic key, key=
    attr_accessor :key
    # @dynamic mode, mode=
    attr_accessor :mode
    # @dynamic path, path=
    attr_accessor :path

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        key: @key,
        mode: @mode,
        path: @path
      }
    end
  end
end
