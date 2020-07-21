## Full GitLab (with Runner) on Docker Compose

1. Add `gitlab.local` in your _/etc/hosts_ file.

2. Start the containers: `docker-compose up -d`

3. Register your first user at http://gitlab.local:8090

4. Get the token to register your runner at http://gitlab.local:8090/admin/runners

5. Edit _register-gitlab-runner.sh_ to replace the token value by yours.

6. Register your Runner by execute the file: `./register-gitlab-runner.sh`

Enjoy full GitLab locally!
