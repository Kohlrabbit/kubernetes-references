require "test_helper"

class TestMarshal < Minitest::Test
  def test_container_marshal
    container = KubeContainer.new(
      name: "my-container",
      command: ["ps"],
      args: ["aux"],
      image: "nginx:latest",
      ports: [
        KubeContainerPort.new(
          container_port: 8080,
          host_port: 80,
          name: "http",
          protocol: "TCP"
        )]
    )

    puts container.schema.to_json
  end

  def test_deployment_marshal
    deployment = KubeDeployment.new(
      api_version: "v1",
      kind: "Deployment",
      metadata: KubeObjectMeta.new(
        annotations: { "my": "annotation" },
        name: "my-deployment",
        namespace: "default"
      ),
      spec: KubeDeploymentSpec.new(
        replicas: 3,
        selector: KubeLabelSelector.new(
          match_labels: {
            "my": "annotations"
          }
        ),
        template: KubePodTemplateSpec.new(
          metadata: KubeObjectMeta.new(
            annotations: { "my": "annotation"}
          ),
          spec: KubePodSpec.new(
            containers: [
              KubeContainer.new(
                command: ["ps"],
                args: ["aux"],
                image: "nginx:latest",
                image_pull_policy: "always",
                name: "my-container"
              )
            ]
          )
        )
      )
    )

    puts deployment.schema.to_json
  end
end