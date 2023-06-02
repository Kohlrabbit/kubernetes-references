module KubernetesReferences
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