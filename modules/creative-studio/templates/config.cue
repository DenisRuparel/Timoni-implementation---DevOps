package templates

import (
	timoniv1 "timoni.sh/core/v1alpha1"
)

#Config: {

	kubeVersion!: string
	moduleVersion!: string

	metadata: timoniv1.#Metadata

	image!: timoniv1.#Image

	replicas: int

	service: {
		port: int
	}

	message!: string

	secrets: {
		CLOUDINARY_KEY:    string
		CLOUDINARY_SECRET: string
		CLOUDINARY_NAME:   string
		CLOUDINARY_URL:    string
	}
}

#Instance: {
	config: #Config

	objects: {
		secret: #Secret & {
			#config: config
		}

		deployment: #Deployment & {
			#config: config
		}

		service: #Service & {
			#config: config
		}

		denyNetwork: #DenyAllNetworkPolicy & {
			#config: config
		}

		allowEgress: #AllowEgressNetworkPolicy & {
			#config: config
		}

		allowIngress: #AllowAppIngressNetworkPolicy & {
			#config: config
		}
	}
}
