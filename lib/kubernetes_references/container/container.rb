# frozen_string_literal: true

module KubernetesReferences
  # https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.23/#container-v1-core
  class Container < KubernetesReferences::API
    # @dynamic env, env=
    attr_accessor :env
    # @dynamic env_from, env_from=
    attr_accessor :env_from
    # @dynamic image, image=
    attr_accessor :image
    # @dynamic image_pull_policy, image_pull_policy=
    attr_accessor :image_pull_policy
    # @dynamic lifecycle, lifecycle=
    attr_accessor :lifecycle
    # @dynamic liveness_probe, liveness_probe=
    attr_accessor :liveness_probe
    # @dynamic name, name=
    attr_accessor :name
    # @dynamic ports, ports=
    attr_accessor :ports
    # @dynamic readiness_probe, readiness_probe=
    attr_accessor :readiness_probe
    # @dynamic resources, resources=
    attr_accessor :resources
    # @dynamic security_context, security_context=
    attr_accessor :security_context
    # @dynamic startup_probe, startup_probe=
    attr_accessor :startup_probe
    # @dynamic stdin, stdin=
    attr_accessor :stdin
    # @dynamic stdin_once, stdin_once=
    attr_accessor :stdin_once
    # @dynamic termination_message_path, termination_message_path=
    attr_accessor :termination_message_path
    # @dynamic termination_message_policy, termination_message_policy=
    attr_accessor :termination_message_policy
    # @dynamic tty, tty=
    attr_accessor :tty
    # @dynamic volume_devices, volume_devices=
    attr_accessor :volume_devices
    # @dynamic volume_mounts, volume_mounts=
    attr_accessor :volume_mounts
    # @dynamic working_dir, working_dir=
    attr_accessor :working_dir
    # @dynamic args, args=
    attr_accessor :args
    # @dynamic command, command=
    attr_accessor :command

    def initialize(obj)
      super()
      _set!(obj)
    end

    def _schema
      {
        args: @args,
        command: @command,
        env: @env,
        envFrom: @env_from,
        image: @image,
        imagePullPolicy: @image_pull_policy,
        lifecycle: @lifecycle,
        livenessProbe: @liveness_probe,
        name: @name,
        ports: @ports.map(&:schema),
        readinessProbe: @readiness_probe,
        resources: @resources,
        securityContext: @security_context,
        startupProbe: @startup_probe,
        stdin: @stdin,
        stdinOnce: @stdin_once,
        terminationMessagePath: @termination_message_path,
        terminationMessagePolicy: @termination_message_policy,
        tty: @tty,
        volumeDevices: @volume_devices,
        volumeMounts: @volume_mounts,
        workingDir: @working_dir
      }.select { |_k, v| v }
    end
  end
end
