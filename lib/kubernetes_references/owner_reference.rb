module KubernetesReferences
  class OwnerReference < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic block_owner_deletion, block_owner_deletion=
    attr_accessor :block_owner_deletion
    # @dynamic controller, controller=
    attr_accessor :controller
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic uid, uid=
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end
  end
end