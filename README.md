README
======

Importing data
--------------

Import data with `rake db:data_import`

Notes
-----

Wrangling the data import took most of the time. For some reason the schema for the
user data changed on me after I made the scaffold, so I had to figure out what was 
going on and recreate the scaffold. The assignment specified an hour and a half, given
another fifteen or so I could have added styling. I very much prefer to spend a little
extra time coming up with custom styling rather than use a CSS framework, from 
experience I'm really picky about my CSS and page markup and don't want a framework 
telling me how to lay my pages out. 

I did something a little different in this app than I usually do, I stuck with ERB
rather than use Slim, my preferred template system. I thought for some reason I'd be
able to drop in a gem to add CSS styling without having to muck around with the layout
myself, and I thought staying with ERB would have made that easier. Didn't actually
happen. If I had to do it again, I'd have just used Slim. Were this a real project,
I'd have asked to change the requirement for a CSS framework and just mucked through
it if refused. Had I just stuck with Slim, I probably would have had enough time to get
through the styling and maybe even the pagination too. Lesson learned.

Other than that, this is how I typically greenfield projects. Depending on the project
I might tighten up my git commits, or add tests. (in this case probably just for the
importer and maybe for the paging logic had I gotten to it) I like to stick with Rails
conventions and build outside only in response to a specific need and with intent.