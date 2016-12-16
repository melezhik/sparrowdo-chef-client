# SYNOPSIS

Run chef client on remote host using Sparrowdo.

# INSTALL

    $ panda install Sparrowdo::Chef::Client

# USAGE

    $ cat sparrow file

    module_run 'Chef::Client', %(
      run-list => [
        "recipe[foo::bar]",
        "role[baz]"
      ],
      log-level => 'info'
    );
    

# Parameters

## run-list

Should be a chef run list. Default value is empty Array.

## log-level

Sets log level for chef client run. Defautl level is `info`. Optional.
  
## attributes

Sets chef node attribues. From the Perl6 point of view it's just a Hash or parameters. 

For example:

    attibutes => {
      foo => 'bar',
      bar => {
        baz => [ 1, 2, 3 ]
      }
    }


# Author

[Alexey Melezhik](melezhik@gmail.com)
