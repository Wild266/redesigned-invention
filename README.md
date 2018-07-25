## Pragmatic AI

More to follow!

## Running Jupyter Locally via Docker

We've shared the same Dockerfile we use for our JupyterHub session in this repository, to make sure you can run all of these notebooks in your own time, on your own machine. This isn't required during class, but can be useful for learning once the session is over.

You will need to have Docker installed on your system to create images and run containers. You can find the installation steps for all platforms on the company's [website](https://docs.docker.com/install/)
.

1) Clone the repository for the class either using the UI or your terminal via `git clone https://resources.oreilly.com/live-training/pragmatic-ai`.

2) Once you have Docker installed, type the following on your terminal to create a Docker image: `docker build -t pragmatic-ai .`

3) That will take a little while to create a Docker image, but once completed, you can run your server with the following:
`docker run -p 8888:8888 pragmatic-ai`

4) Head to `localhost:8888` in your browser and you will be able to access the Jupyter Notebooks.
