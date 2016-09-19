# emacsctrll.vim

Crude emulation of `C-L` from Emacs.

The algorithm used is similar to but not the same as what Emacs uses. It
works for most situations but I can't promise anything.  In particular,
it's usually a crapshoot whether this works if there are any logical
lines that take up more than one visual line.  If hitting `<C-L>`
doesn't move the screen, there is always `<C-O>zz` and similar commands.

I don't think the exact behavior from Emacs can be emulated in Vim
because when there is more than one line in the window, the first line
in the window cannot be displayed partially.

## License

Distributed under the same terms as Vim itself. See `:help license`.
