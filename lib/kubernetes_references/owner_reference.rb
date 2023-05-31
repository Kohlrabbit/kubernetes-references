module KubernetesReferences
  class OwnerReference < KubernetesReferences::API

    attr_accessor :api_version
    attr_accessor :block_owner_deletion
    attr_accessor :controller
    attr_accessor :kind
    attr_accessor :name
    attr_accessor :uid

    def initialize(obj)
      _set!(obj)
    end
  end
end