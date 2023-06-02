# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#windowssecuritycontextoptions-v1-core
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
      super()
      _set!(obj)
    end

    def _schema
      {
        gmsaCredentialSpec: @gmsa_credential_spec,
        gmsaCredentialSpecName: @gmsa_credential_spec_name,
        hostProcess: @host_process,
        runAsUserName: @run_as_user_name
      }
    end
  end
end
