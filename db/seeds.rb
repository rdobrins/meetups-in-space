# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')


User.create(
  provider: "RJDFNSL", uid: "MVLSKSD", username: "Ryan2125", email: "ryan@ryan.com", avatar_url: "MNDHSK"
)
User.create(
  provider: "BMDNSV", uid: "VNSBSJ", username: "Ryan44", email: "nayr@nayr.com", avatar_url: "GMDKS"
)
User.create(
  provider: "VBNDN", uid: "PRLS", username: "Tom88", email: "tom@mot.com", avatar_url: "DLOSKA"
)
User.create(
  provider: "RLWKSD", uid: "RUAUSJ", username: "MegMil55", email: "meg@meg.com", avatar_url: "RYUAHS"
)
User.create(
  provider: "ROTKSL", uid: "DNCAY", username: "Frank66", email: "frank@frank.com", avatar_url: "CMSNSH"
)

Meetup.create(
  what: "Pig Skin Toss", why: "Football", where: "Foxboro", when: "2015-03-26 05:45:33"
)
Meetup.create(
  what: "Potato Cannon", why: "Boom", where: "Hopkinton", when: "2015-04-06 09:45:33"
)

Usermeetup.create(
  meetup_id:"1",user_id:"1"
)
Usermeetup.create(
  meetup_id:"2",user_id:"2"
)
Usermeetup.create(
  meetup_id:"1",user_id:"3"
)
Usermeetup.create(
  meetup_id:"2",user_id:"4"
)
Usermeetup.create(
  meetup_id:"1",user_id:"5"
)
Usermeetup.create(
  meetup_id:"2",user_id:"1"
)
Usermeetup.create(
  meetup_id:"1",user_id:"2"
)
