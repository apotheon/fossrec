# FossRec Development Process

1. Pick a ticket from the ticket tracker.

2. Create a local branch in your development environment to work on the story.
   Name it after the ticket, starting with the ticket number.

    Example: `3-contrib-docs`

    (for ticket 3, titled `add contributor documentation to the project`)

3. Work on the story until it's complete, using the typical TDD/BDD loop.

4. . . .

5. Push the branch to the repository.

        $ fossil push 

6. Create a pull request using the template.

    See `PULL_REQUEST_TEMPLATE.md`.  Fill it out and paste it as a comment to
    the relevant ticket.  Set the status to `Fixed`.

    [TODO: create pull request template document]

7. Contact the project maintainer to review your code.

8. Check review comments, make necessary changes, commit, and push when
   finished.

9. Request reviewer or project lead merge your code.

Wash, rinse, and repeat: go through steps 7-9 until finished.
