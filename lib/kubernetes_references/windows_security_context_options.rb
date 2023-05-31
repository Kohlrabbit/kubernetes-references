module KubernetesReferences
  class WindowsSecurityContextOptions < KubernetesReferences::API
    # @dynamic gmsa_credential_spec, gmsa_credential_spec=
    attr_accessor :gmsa_credential_spec
    # @dynamic gmsa_credential_spec_name, gmsa_credential_spec_name=
    attr_accessor :gmsa_credential_spec_name
    # @dynamic host_process, host_process=
    attr_accessor :host_process
    # @dynamic run_as_user_name, run_as_user_name=
    attr_accessor :run_as_user_name

    def initialize(obj)
      _set!(obj)
    end
  end
end