# Deno Docker
A sample Dockerfile to use with [Deno](https://deno.land) applications.

### Deno Versions
To use a different version of Deno, change the following line in the Dockerfile

    ENV DENO_VERSION=0.40.0
    
And specify your desired Deno Version

### Github Actions (CI/CD)
A [workflow](https://github.com/brianraila/deno-docker/tree/master/.github/workflows) file has been added to test and push this image to Github Packages.
