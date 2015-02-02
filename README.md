# FFI::Platypus::Lang::CPP::Demangle::XS

Demangle C++ symbols using the C++ ABI API

# SYNOPSIS

    use FFI::Platypus::Lang::CPP::Demangle::XS;
    
    my $demangled = demangle($c_symbol);

# DESCRIPTION

This module provides an interface for demangling C++ symbols.

It is an alternative to `c++filt` for [FFI::Platyus::Lang::CPP](https://metacpan.org/pod/FFI::Platyus::Lang::CPP).

Perl 5.8.1 or newer is required.  No non-core prereqs on Perl
5.8 - 5.18.  [Module::Build](https://metacpan.org/pod/Module::Build) is a configure and build dependency
on Perl 5.20 or better.

# FUNCTIONS

## demangle

    my $demangled = demangle($c_symbol);

Demangle the given symbol.  If the input symbol is not a valid
C++ symbol, then it will return `undef`.  If there is any other
error (memory allocation, for example), it will throw an exception.

# SEE ALSO

- [FFI::Platypus::Lang::CPP](https://metacpan.org/pod/FFI::Platypus::Lang::CPP)

    Documentation and tools for using C++ and FFI / Platypus

- [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus)

    Write extensions for Perl without XS or a compiler

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
