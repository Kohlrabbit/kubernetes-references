# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#seccompprofile-v1-core
  class SeccompProfile < KubernetesReferences::API
    # @dynamic localhost_profile, localhost_profile=
    attr_accessor :localhost_profile
    # @dynamic type, type=
    attr_accessor :type

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        localhostProfile: @localhost_profile,
        type: @type
      }
    end
  end
end
