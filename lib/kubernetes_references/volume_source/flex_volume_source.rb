module KubernetesReferences
  class FlexVolumeSource < KubernetesReferences::API
    # @dynamic driver, driver=
    attr_accessor :driver
    # @dynamic fs_type, fs_type=
    attr_accessor :fs_type
    # @dynamic options, options=
    attr_accessor :options
    # @dynamic read_only, read_only=
    attr_accessor :read_only
    # @dynamic secret_ref, secret_ref=
    attr_accessor :secret_ref

    def initialize(obj)
      _set!(obj)
    end

    def _schema
      {
        driver: @driver,
        fsType: @fs_type,
        options: @options,
        readOnly: @read_only,
        secretRef: @secret_ref.schema
      }
    end
  end
end