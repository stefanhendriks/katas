# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p = Post.new
p.content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tortor nunc, malesuada mollis facilisis id, aliquam vitae nisl. Etiam ac fermentum sem. In ac lacus nunc. Fusce quam eros, commodo non viverra vitae, laoreet at purus. Pellentesque eu urna nisi. Vestibulum nec nunc facilisis sapien sodales iaculis. Nam gravida libero et nunc mattis ullamcorper. Fusce vestibulum nibh pharetra dolor mollis nec ultrices urna scelerisque. Nunc tincidunt libero sit amet nulla posuere id molestie arcu dignissim.

Nullam rutrum congue orci et aliquet. Nam luctus congue libero, vel hendrerit est egestas dignissim. Sed dignissim orci dignissim velit feugiat sit amet pretium tellus convallis. Nam at molestie purus. Praesent iaculis est ac neque luctus rutrum. Etiam vel sagittis orci. Donec quis convallis turpis. Proin ut molestie mi. Nullam nisi orci, consequat nec hendrerit eget, vehicula eu urna. Cras bibendum nulla a nisl tempus fermentum. Aenean lorem est, ultricies id hendrerit ut, hendrerit vitae erat. Donec fringilla semper vehicula. Nunc imperdiet consectetur sapien non pretium. Etiam malesuada malesuada blandit. Nam et elit in diam pretium pulvinar. Etiam quis tellus vitae quam fermentum placerat.

Mauris sem massa, consequat eu fringilla eu, rutrum ut nunc. Vestibulum fringilla, risus accumsan lacinia molestie, dui urna porta est, id consectetur lacus magna sit amet est. Fusce libero mauris, sollicitudin in fringilla a, ultrices nec velit. Nam pellentesque sem eget magna gravida vel ullamcorper erat posuere. Duis sit amet gravida enim. Sed adipiscing vulputate mauris, sed elementum neque laoreet in. Suspendisse nibh erat, placerat a eleifend nec, pharetra ut leo. Phasellus massa quam, volutpat quis ultricies id, porta ac lectus. Fusce nunc elit, convallis eu convallis vitae, posuere et nunc. Quisque non est a nibh placerat molestie. Suspendisse non leo non mauris convallis commodo. Nam eu malesuada est. Phasellus condimentum luctus libero, nec laoreet leo tristique sit amet. Proin nec sem placerat arcu tincidunt semper varius eu est. In nec eros id nisi feugiat mattis sit amet vel sapien. Duis tincidunt sagittis arcu at ultrices.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus lacinia tincidunt lacus id faucibus. Nunc viverra dictum tempus. Donec suscipit augue vel libero ultricies tempor. Mauris et justo augue, at ullamcorper ipsum. Fusce eget tortor augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce nibh ante, dapibus faucibus commodo at, rhoncus non neque.

Praesent sed egestas ante. Nulla non consectetur eros. Suspendisse et tellus massa, nec laoreet lectus. Curabitur ipsum ipsum, euismod rutrum fermentum a, feugiat id nibh. Nulla facilisi. Fusce a nibh augue. Mauris dui dolor, sollicitudin vel faucibus non, vehicula ut felis. Vivamus massa dui, posuere non pharetra a, porttitor et dolor.'

p.title = "Some Lorum Ipsum topic"

p.save!