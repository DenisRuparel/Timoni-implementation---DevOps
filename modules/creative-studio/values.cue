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
		CLOUDINARY_KEY: "245894724521338"
		CLOUDINARY_SECRET: "Fk1Zd7tl28uRnz76KwAS8LVlfno"
		CLOUDINARY_NAME: "dztttq7sx"
		CLOUDINARY_URL: "cloudinary://245894724521338:Fk1Zd7tl28uRnz76KwAS8LVlfno@dztttq7sx"
	}
}
