@if(!debug)

package main

values: {
	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     "sha256:eb6c829029d7d1634d61287b6d83eeb32f58998e6aad55cdeb198de27aef39e7"
		tag:        ""
	}

	replicas: 1

	service: {
		port: 5000
	}

	message: "creative studio running"

	secrets: {
		CLOUDINARY_KEY: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_SECRET: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_NAME: "PUT_YOUR_SECRETS_HERE"
		CLOUDINARY_URL: "PUT_YOUR_SECRETS_HERE"
	}
}
