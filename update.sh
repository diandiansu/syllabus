#!/bin/sh
ssh coms4111@clic.cs.columbia.edu 'cd ~/html/; git checkout *; git pull; chmod -R 775 *'