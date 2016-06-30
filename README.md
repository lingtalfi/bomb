bomb
=========
2016-06-30


A command line sugar to remove files and dirs.




How to use
-------------
First install it (see next section), and then:



Synopsis:

- bomb: drops everything that's in your current directory without prompt
- bomb <what>: drops the <what> entry (it can be either a directory or a file)




Install
----------
Put bomb.sh in your filesystem in a dir listed in your $PATH (echo $PATH).

Give the bomb.sh script executable rights.

```bash
chmod u+x bomb.sh
```


Then create an alias from bomb to bomb.sh

```bash
ln -s bomb.sh bomb
```

Now you can use bomb on your machine.











Why?
-------

Sometimes, I use rm and it complains about things I don't understand.
When this happen, I end up with executing multiple rm statements, some with -r option, some with -f,
and I don't always understand what's happening.

That was before.

Now I'm getting tired of things I don't understand, and I luckily found an alternative using the find command.

To delete anything in the current directory:


```
find . -delete
```

This command so far never complained, so I prefer it over rm.

Plus, it is as versatile as find is, so if I want to delete only files, I can do:
 
```
find . -type f -delete
```

Or, if I want to delete only directories

```
find . -type d -delete
```

And so on.

But I'm so lazy now that I want a one word command (even typing "find . -delete" hurts my fingers).

bomb

bomb is originally an alias for "find . -delete".

As a result, bomb becomes a stand alone command.

bomb: drops everything inside the current directory.

But then, to make it more useful, it should accept one optional argument that indicates which directory/file to delete.
 
 
``` 
bomb [<what>]
 
    <what>: 
        if <what> is a file, then bomb will remove that file
        if <what> is a directory, then bomb will remove that directory
``` 
        
        
In case of symlinks, bomb removes the symlink itself, never the target.

Note: that's cool, but bomb is actually very dangerous in that there will be no turn back.
        It could be maybe be a good thing to put things in the trash rather than deleting them without prompt,
        but for now, let bomb be that dangerous tool and see how much complaints we have.
        
        
        
        
 
 
Never do the following
------------------------

Please never drop a bomb on your friend's machine and then type bomb in her terminal,
please never do that, even if you don't like her.






History Log
------------------
    
- 1.0.0 -- 2016-06-30

    - initial commit
    
    




