module KubernetesReferences
  class ObjectFieldSelector < KubernetesReferences::API
    # @dynamic api_version, api_version=
    attr_accessor :api_version
    # @dynamic field_path, field_path=
    attr_accessor :field_path

    def initialize(obj)
      _set!(obj)
    end
  end
end