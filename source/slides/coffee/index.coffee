pop = Popcorn("#czMobile");

examples = []

addExample = (code, time) ->
   examples.push {code: code, time: time}

# Start

addExample("""
{ 
  loading: false
  user: undefined
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 0)

# Loading On

addExample("""
{ 
  loading: true
  user: undefined
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 6)

# User Set

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 7)

# Address book set
# Loading off

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: false }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 8)

# Check Address Book

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 11)

# Commit Address Book Selection

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 13)

# Uncheck all contacts

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: false, ...}
    { sname: "Redman", fname: "Rob", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Prior", fname: "Cheryl", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 16)

# Check Ben

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Prior", fname: "Cheryl", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 20)

# Check Rob

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Prior", fname: "Cheryl", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 20.1)

# Check Paul

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: false, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 20.25)

# Check Cheryl

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: false, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 21.15)

# Check James

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: false, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 24)

# Check Mark

addExample("""
{ 
  loading: false
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 24.15)

# Loading

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 25.15)

# Complete

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: { name: "Mobile Importer", id: 4, checked: true }
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: true
  showHelp: false
}
""", 26)

# Uncommit Addressbook

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: [
    { name: "adambutler", id: 1, checked: false }
    { name: "CardDav", id: 2, checked: false }
    { name: "LinkedIn", id: 3, checked: false }
    { name: "Mobile Importer", id: 4, checked: true }
    ...
  ]
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Polis", fname: "James", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 30)

# Uncommit Addressbook

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Polis", fname: "James", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 31.15)

# Help Shown

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Polis", fname: "James", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: true
}
""", 33.10)

# Help Shown

addExample("""
{ 
  loading: true
  user: { username: "adambutler", "token": "abc123" ...}
  addressBook: undefined
  addressBooks: undefined
  contacts: [
    { sname: "Reid", fname: "Benjamin", checked: true, ...}
    { sname: "Redman", fname: "Rob", checked: true, ...}
    { sname: "Procter", fname: "Paul", checked: true, ...}
    { sname: "Prior", fname: "Cheryl", checked: true, ...}
    { sname: "Polis", fname: "James", checked: true, ...}
    { sname: "Panay", fname: "Mark", checked: true, ...}
    ...
  ]
  complete: false
  showHelp: false
}
""", 35)

setupEvents = (example) ->
  pop.code({
    start: example.time,
    onStart: ->
      $('#czMobileContainer code').html(example.code)
      $("#czMobileContainer code").each (i, e) ->
        hljs.highlightBlock e if hljs?


  });


for example, i in examples
  setupEvents(example)
