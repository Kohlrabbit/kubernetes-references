module KubernetesReferences
  class QuobyteVolumeSource < KubernetesReferences::API
    # @dynamic group, group=
    attr_accessor :group
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic registry, registry=
    attr_accessor :registry
    # @dynamic tenant, tenant=
    attr_accessor :tenant
    # @dynamic user, user=
    attr_accessor :user
    # @dynamic volume, volume=
    attr_accessor :volume

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        group: @group,
        readOnly: @read_only,
        registry: @registry,
        tenant: @tenant,
        user: @user,
        volume: @volume
      }
    end
  end
end
