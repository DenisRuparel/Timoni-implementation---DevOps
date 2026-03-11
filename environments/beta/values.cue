@if(!debug)

package main

values: {
	replicas: 2

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest: "sha256:2be8b7c9bd726fd132ff30729b29879f1d4bc6071bad07cf330877444132e1de"
		tag: ""
	}

	service: {
		port: 5000
	}

	secrets: {
		CLOUDINARY_KEY: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_SECRET: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_NAME: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_URL: "PUT_YOUR_SECRETS_HERE"
	}
}
