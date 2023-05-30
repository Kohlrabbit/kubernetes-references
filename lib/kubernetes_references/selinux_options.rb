module KubernetesReferences
  class SELinuxOptions < KubernetesReferences::API
    attr_accessor :level
    attr_accessor :role
    attr_accessor :type
    attr_accessor :user

    def initialize(obj)
      _set!(obj)
    end
  end
end