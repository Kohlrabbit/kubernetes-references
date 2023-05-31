module KubernetesReferences
  class ObjectReference < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic field_path, field_path=
    attr_accessor :field_path
    # @dynamic kind, kind=
    attr_accessor :kind
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic namespace, namespace=
    attr_accessor :namespace
    # @dynamic resource_version, resource_version=
    attr_accessor :resource_version
    # @dynamic uid, uid=
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end
  end
end