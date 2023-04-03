# Text-Based Web
- [Description](#description)
- [Persona](#persona)
- [Browser Interaction](#browser-interaction)
- [TUI vs GUI](#tui-vs-gui)
- [Improvements](#improvements)
- [See Also](#see-also)
- [Contributor](#contributor)

## [Description](#)
In this section, we will examine TUI (Text User Interface) browsers. Among all the variety of similar apps, I have decided to analyze lynx as being the most popular TUI browser, links as an alternative to lynx, and browsh as providing the most similar experience with regular GUI one.

_Note_: For an enhanced experience, you can analyze the following documents with the proposed browsers.

Before starting, let's take a closer look at the browsers and see how each browser identifies itself as. The following descriptions are taken from their official sites.

### Lynx
[Lynx](https://github.com/kurtchen/Lynx) is a fully-featured World Wide Web (WWW) client for users running cursor-addressable, character-cell display devices such as vt100 terminals, vt100 emulators running on Windows 95/NT or Macintoshes, or any other character-cell display.  It will display HyperText Markup Language (HTML) documents containing links to files on the local system, as well as files on remote systems running HTTP, gopher, FTP, wais, nntp, finger, or cso/ph/qi servers, and services accessible via logins to telnet, tn3270 or rlogin
accounts.  Current versions of Lynx run on Unix, VMS, Windows95 through Windows 8, 386DOS and OS/2 EMX.

Lynx can be used to access information on the WWW, or to establish information systems intended primarily for local access.  Lynx has been
used to build several Campus Wide Information Systems (CWIS). Lynx can also be used to build systems isolated within a single LAN.

### Links
[Links](http://links.twibright.com/about.php) is a web browser running in both graphics and text mode. Mikuláš Patočka started writing Links (text mode those days) in 1999. In 2000 Marting Pergel, Petr Kulhavý and Karel Kulhavý joined the project to add graphics and Javascript capabilities into Links together with Mikuláš Patočka. The program has been written mainly as a hobby and also as a school project.

### Browsh
[Browsh](https://www.brow.sh) is a fully-modern text-based browser. It renders anything that a modern browser can; HTML5, CSS3, JS, video and even WebGL. Its main purpose is to be run on a remote server and accessed via SSH/Mosh or the in-browser HTML service in order to significantly reduce bandwidth and thus both increase browsing speeds and decrease bandwidth costs. 

On this page, we will analyze TUI browsers as a whole, rather than individually. A more detailed information regarding each browser individually can be found here:

- [Lynx](browser/lynx.html)
- [Links](browser/links.html)
- [Browsh](browser/browsh.html)

## [Persona](#)
Let's consider the following personas: 
- [Primary Persona](persona/primary_persona.html)
- [Secondary Persona](persona/secondary_persona.html)
- [Negative Persona](persona/negative_persona.html)

We can see that their goals differ, but each of them has a necessity of using a browser under some specific and limited conditions, where a normal browser would work slow or won't work at all. In this case, a working browser is better than nothing at all. In some other conditions, it might be even better that a GUI one for being able to operate with different kind of protocols such as FTP.

## [Browser Interaction](#)
### Customization
Every person has its own approach on using a web browser, so the browser should be customizable and extendable.

As for browsh, even if it gives an experience similar to a GUI one, it lacks tons of features and customization.

Links is more user-friendly when it comes to customization. It can be done via the menu bar, and it separates HTML customization from terminal one. One flaw of it is that the configuration should be saved manually, and the user isn't notified about it.

### Help Section
For both browsh and lynx, the help section is more accessible to a new user. On the other hand, it's way harder to find the help section for the first time in links browser. When opening the browser without any URL given, it displays an empty screen, and the user is confused rather than it's working or not.

### Browsing
Browsing a web resource for both links and lynx (and similar browsers) might be hard because of the structure of a modern page. While having a menu with hidden elements somewhere on top of the screen is relevant for a GUI browser, it's hard to navigate to the content on a TUI app. Browish handles such issues, as the page is rendered as a normal one, then it's displayed on a terminal in a pixelated form.

Another problem might be browsing local files such as Markdown or TeX documents or even emails. Links can do this ob better, lynx doesn't open plain-text documents while browsh can't open local files at all.

Navigating through the application using keybindings only might be an easier task for an experienced user. Basic key combinations are also easy to remember: CTRL+n which comes from 'next' or CTRL+p which comes from 'previous', CTRL+b from 'back' and so on. As for browsh, it's using the same combinations as a graphical browser.

## [TUI vs GUI](#)
Next we will compare the difference between surfing the web using a GUI and a TUI application. Because browsh provides an experience similar to GUI apps, it will be left of out the scope for this section.

Most web pages are designed to work properly mainly on three engines: blink for chrome-like browsers, gecko for firefox-like browsers and WebKit for safari, and only a small percentage of web resources are adapted to TUI browsers like links and lynx. And when it comes to viewing a resource, this can be a painful task, even impossible sometimes ([youtube](https://youtube.com) for example).

There are some protocols like gopher that are only supported by the lynx, and can't be opened other than specialized browsers. Other protocols like FTP are both accessible by links and lynx.

Overall, even if some particular information could be found, it's a more painful experience for the user than using a regular GUI browser. Nevertheless, some tasks might be easier to manage on a TUI browser, which includes working with outdated and low-resource machines, using different protocols for communication or even remotely browsing the web via SSH protocol.

## [Improvements](#)
### Fitts' Law
For both links and lynx, scrolling through the page can be improved by using just one key instead of two. In this case, scrolling could be done using just one hand, similar to scrolling in vim. On the other hand, browsh has no keybinding to click on external links, so you have to use a mouse or touchpad. While it's more convenient for some users, others might experience some frustration. 

As for browsing the web, nearly every web source has a list menu with links to the different areas of the site. This list might be long and scrolling to the page content might take a longer time than expected and be a painful experience. 

### Hick's Law
The number of scrolling options in lynx is too excessive and split far apart. To move two lines, you should press CTRL+n (next) and CTRL+p (previous). For half a page, scroll is '(' and ')'. It's confusing even for two lines scroll, having this many unrelated options might be frustrating for the user.

### Steering's Law
The help section of lynx is, basically, an HTML document with multiple links to other documents. Navigating it and searching for some information might take a while. Not to mention that there are external non-working links. On the other hand, links has a more intuitive and user-friendly menu that also shows some basic keybindings along with the action they do.

Another frustration point is, as I've mentioned above, a big section of links on a typical web resource that's supposed to be a menu bar in the graphical browser. If the browser could manage to extract them all in a separated section/panel of external links, called by a keybinding, both the content and the menu would be easily accessible, and the user won't have to scroll the menu all the time.

## [See Also](#)
- [A list of TUI apps](https://github.com/rothgar/awesome-tuis)
- [Elinks](http://elinks.or.cz)
- [w3m](https://github.com/acg/w3m)

## [Contributor](#)
Gheorghița Vlad