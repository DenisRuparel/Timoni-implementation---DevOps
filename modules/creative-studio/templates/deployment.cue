package templates

import (
	appsv1 "k8s.io/api/apps/v1"
	corev1 "k8s.io/api/core/v1"
)

#Deployment: appsv1.#Deployment & {
	#config: #Config

	apiVersion: "apps/v1"
	kind: "Deployment"

	metadata: #config.metadata

	spec: {
		replicas: #config.replicas

		selector: matchLabels: {
			app: #config.metadata.name
		}

		template: {
			metadata: labels: {
				app: #config.metadata.name
			}

			spec: corev1.#PodSpec & {

				imagePullSecrets: [
					{
						name: "harbor-secret"
					},
				]

				containers: [
					{
						name: #config.metadata.name

						image:
							#config.image.repository +
							"@" +
							#config.image.digest

						ports: [
							{
								containerPort: 5000
							},
						]

						envFrom: [
							{
								secretRef: {
									name: #config.metadata.name + "-secrets"
								}
							},
						]
					},
				]
			}
		}
	}
}
