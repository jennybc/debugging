Notes on how Christine and I collaborated on the Keynote deck for my rstudio::conf 2020 debugging talk.

Christine's responsibility:

  * Create a Keynote theme.
  * Make specific slides where art or visual design is critical.
  
Christine's work product is **the template deck**:

  * Its theme is The Theme. Keynote themes can't really be managed as first-class objects. A theme that is evolving really has to have a companion/host deck that embeds the theme.
  * The template deck also has slides:
    - Good examples of key slide types.
    - The specific slides mentioned earlier, where there's special art.

Christine uses Keynote/iCloud collaboration features to share the template deck with Jenny. Various aspects are annoying (but it basically works):

  * To modify the theme, Christine must un-share, do her thing, re-share.
  * A shared deck has to stay under a certain size limit. So, we could never collaborate this way on the real talk deck.
  * The sharing seems buggy / laggy and we often had to re-share, wait, or temporarily share with "anyone with a link".
  * You can look at -- and even edit -- a shared Keynote file on iCloud. But this interface is much less capable than the actual Keynote app. For example, you can't see nonstandard fonts or presenter notes. Only useful for taking a quick glance at something.
  
Jenny's work product is **the talk deck**. She regularly integrates new versions of the template deck into the talk deck:

  * Open the current template deck. Literally, open its link, which causes the shared Keynote iCloud deck to open in the local Keynote app.
  * *File > Duplicate* then save a local copy of the template deck, with same filename pattern as `.kth` files (below).
  * *File > Save Theme*. Use the theme name for version control. Save in a `kth/` directory of the talk's project. Example of how this directory looks after ingesting several versions of the theme (Christine incremented her file name once):
  
        20 Jan 08:50      01-20-1_RStudio-Debugging-Template.kth
        21 Jan 11:24      01-21-1_RStudio-Debugging-Template-v2.kth
        23 Jan 09:49      01-23-1_RStudio-Debugging-Template-v2.kth
        23 Jan 10:03      01-23-2_RStudio-Debugging-Template-v2.kth

  * Double click on the most recent `.kth` theme file in Finder to cause Keynote to offer to add the theme to the theme choose. Say yes.
  * Exactly once, at the start, Jenny creates a new deck with this theme. This is how the talk deck is initially created. Every slide is created *de novo*, based on talk outline or draft slides made earlier, with a different theme. Do not copy / paste slides from elsewhere, so you don't contaminate this deck with foreign master slides. Be very careful with any form of copy/paste to avoid bringing in foreign fonts or styles.
  * Everytime Christine "releases" a new theme deck (an informal event), create a copy of the talk deck. Call it "debugging-bleeding-edge" or similar. Keep the main deck "debugging" safe from the theme experimentation.
  * Use *Document > Document* to change the theme of "debugging-bleeding-edge" to the theme saved from the most-recent theme deck.
    - If all hell breaks loose, tell Christine about problems and abandon the experiment.
    - Usually it applies (fairly) cleanly. Click through the slides, compare to current "debugging" deck. Re-apply any style tweaks that were lost/goofed up. Provide Christine with feedback if we can prevent that on the next iteration.
    - If any featured art slides have changed or been added, copy the whole slide from template deck to talk deck.
  * Once "debugging-bleeding-edge" is sorted out ... rename "debugging" to "debugging-backup-DATE" or similar. Rename "debugging-bleeding-edge" to "debugging". Lather, rinse, repeat, *ad nauseum*.
    - This workflow strongly encourages postponing all *ad hoc* style tweaks to the last possible moment, to avoid having to re-apply them every time the theme updates. Just record the need in presenter notes and implement in a late polishing pass.
