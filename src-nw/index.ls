require! { fs, '../common/earl-grey': {EarlGrey} }

nw-tags = <[head title]>
EarlGrey.compile nw-tags

head = ->
  h = EarlGrey.head!inner do
    EarlGrey.title!inner 'Crunchier - The nw app'
  #
  # TODO: add meta
  #
  #
  h

export generate = (_, cb) !-->
  #
  # TODO
  #
  try
    page = new EarlGrey!
    #
    page.inner do
      head!
      #
    #
    fs.writeFileSync \./nw/index.html, page.to-string!
    #
    /*
    #
    a = new EarlGrey!inner do
      EarlGrey.head href: \example
      'examp 1'
      'examp 2'
      EarlGrey.title \atitle
      'example !'
    #
    #a.tag(\example, {anattr: 54}, [])
    */
    #
    #
    #
    cb void 4
  catch
    cb e, void
  #
