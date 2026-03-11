package main

import (
	templates "timoni.sh/creative-studio/templates"
)

values: templates.#Config

timoni: {
	apiVersion: "v1alpha1"

	instance: templates.#Instance & {
		config: values

		config: {
			moduleVersion: *"0.1.0" | string @tag(mv, var=moduleVersion)
			kubeVersion:   *"1.29" | string @tag(kv, var=kubeVersion)

			metadata: {
				name:      *"creative-studio" | string @tag(name)
				namespace: *"default" | string @tag(namespace)

				#Version: moduleVersion
			}
		}
	}

	apply: app: [for obj in instance.objects {obj}]
}
