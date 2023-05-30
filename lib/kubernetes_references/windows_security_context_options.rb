module KubernetesReferences
  class WindowsSecurityContextOptions < KubernetesReferences::API
    attr_accessor :gmsa_credential_spec
    attr_accessor :gmsa_credential_spec_name
    attr_accessor :host_process
    attr_accessor :run_as_user_name

    def initialize(obj)
      _set!(obj)
    end
  end
end