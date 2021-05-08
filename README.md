# Rumble

This framework allows you to easily run the [Rumble scanning agent](https://www.rumble.run/docs/discovering-assets/) as a container and create an asset inventory for your network.

Pull this docker image and create a copy of the `run.sh` which fetches and runs your Rumble scanning agent.

- You will need to pass the URL for the Rumble scanning agent executable as an environment variable to your container.
- Bind your local directory to the output directory for the rumble scan results to ensure they don't get lost when the container stops.

Example command to pull image and run Rumble scanning agent:
`docker run -v "$LOCAL_DIRECTORY:/rumble" -e AGENT_URL=${RUMBLE_AGENT_URL} -it faaideen/rumble 192.168.32.0/20 -r 100`
