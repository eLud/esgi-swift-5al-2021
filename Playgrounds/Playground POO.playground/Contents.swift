
struct Person {
    var name: String

    init(name: String) {
        self.name = name
    }
}

var me = Person(name: "Ludovic")

var you = me

me.name
you.name

you.name = "Paul"
me.name
you.name
