# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#selinuxoptions-v1-core
  class SELinuxOptions < KubernetesReferences::API
    # @dynamic level, level=
    attr_accessor :level
    # @dynamic role, role=
    attr_accessor :role
    # @dynamic type, type=
    attr_accessor :type
    # @dynamic user, user=
    attr_accessor :user

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        level: @level,
        role: @role,
        type: @type,
        user: @user
      }
    end
  end
end
