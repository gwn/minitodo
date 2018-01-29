### Minitodo
Simple command line task manager

### Features
- Simple, having around only 20 commands, with no flags or  
  complicated options. Can be completely mastered in 20 minutes.
- Supports tag based categorization & filtering, attachments,  
  comments, and synchronization.
- The only dependency is Git, which is only required if you  
  want to work with others.

### Demo
[Asciinema Video](https://asciinema.org/a/mh3BCiHVr9AvC4cihMpw1WAL1)

### Supported platforms
All POSIX compatible environments are supported.  
(MacOS, Linux, BSDs, Cygwin in Windows, ..)

### Why

Just two days ago I was cursing a bloated web based task manager and  
was considering switching to [taskwarrior][1] / [bug][2] / plain text  
files  for my task management needs.

The problem is that Taskwarrior is a bit too complicated for my tastes,  
and also not much friendly to non-developers. While bug and plain text  
files do not have all the features I need.

So I thought why not invent yet another task manager myself??

## Status

While being a (barely) working prototype; this is a work in progress,  
and is still in alpha phase.

### Installation

    make config  # or cp config.example config; vi config
    make install
    make install-config

### Documentation

Commands:

    help | quit | q | proj | new | sum | <taskid> | ed | up | down | tag |
    detag | attach | discuss | say | discussion | talk | tags | ls | l |
    ls-any | lsa | ls-title | lst | close | cl | rm | activity | act | sync |
    reindex

Command details:

    help                           Show this screen
    quit or q                      Quit
    proj                           List projects
    proj <name>                    Switch to project
    new                            Open system editor to create a new task
    new <name>                     Create new task immediately with the given name
    sum <id> or <id>               Show task summary
    ed <id>                        Edit basic task info
    up <id>                        Increase the priority of the task by 1
    down <id>                      Decrease the priority of the task by 1
    tag <id> <tag1> [<tag2> ..]    Add tags to task
    detag <id> <tag1> [<tag2> ..]  Remove tags from task
    attach <id>                    Open attachments directory
    discuss or say <id>            Add a new comment to this task
    discussion or talk <id>        List all comments of this task
    tags                           Show all tags
    ls or l                        List all tasks
    ls or l <tag1> <tag2> ..       List tasks filtered by all matching tags
    ls-any or lsa <tag1> <tag2> .. List tasks filtered by any matching tag
    ls-title or lst <search-text>  List tasks that contain the text
                                   <search-text> in their title
    close or cl <id>               Close and archive task
    rm <id>                        Remove task
    activity or act                Display activity log
    sync                           Send your updates to your target task
                                   repository
    reindex                        Update the index file, for advanced
                                   use. If for any reason you suspect that
                                   the task list and the task files go out
                                   of sync, you can reindex.

[1]: https://taskwarrior.org/
[2]: https://github.com/driusan/bug
