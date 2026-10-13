// Generated against the pinned Faker checkout by scripts/generate-parity.mjs.

///|
test "upstream parity seed 0" {
  let f = @faker.Faker(seed=0)
  f.seed(0)
  json_inspect(f.git_commit_date(), content="Tue Dec 31 13:10:16 2019 +0600")
  f.seed(0)
  json_inspect(
    f.git_commit_entry(),
    content="commit fdb9e9df8bbce110cbdfbab2e3eb95bac0dddef7\r\nAuthor: Amie.DuBuque57 <Amie.DuBuque@gmail.com>\r\nDate: Tue Dec 31 06:04:44 2019 +0000\r\n\r\n    connect back-end array\r\n",
  )
  f.seed(0)
  json_inspect(
    f.internet_jwt(),
    content="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzc3OTc4MTcsImV4cCI6MTU3Nzg0OTg5NiwibmJmIjoxNTgwNjY3NjcyLCJpc3MiOiJUb3kgYW5kIFNvbnMiLCJzdWIiOiI2Yzg5ZTExMC1kY2RmLTRjN2MtYTFhMi1mODY0Yzc5MDk5OWYiLCJhdWQiOiI1NmIwYWEzMi01NTk3LTRmMTMtYjJhNC03MzIxYTIzNWQxZDEiLCJqdGkiOiI3ZjliMDQxNC0xNTYxLTRiOTQtOTgxOS1lNWEyYjQyOTBkMGEifQ.JXfzAzdXrQHiOoSASGIvXDqB1iEhCq8izAzEEqTmrTNH6VIZ9RaC7QOzp4HsIRYR",
  )
  f.seed(0)
  json_inspect(f.object_entry({ "a": 1, "b": 2, "c": 3 }), content=["b", 2])
}

///|
test "upstream parity seed 1" {
  let f = @faker.Faker(seed=1)
  f.seed(1)
  json_inspect(f.git_commit_date(), content="Tue Dec 31 10:00:30 2019 +0600")
  f.seed(1)
  json_inspect(
    f.git_commit_entry(),
    content="commit f0632478b9f4d0e9c34bf6fdd103d29fbf6fc0af\r\nAuthor: Quincy Vandervort <Quincy.Vandervort@gmail.com>\r\nDate: Tue Dec 31 03:31:17 2019 +0300\r\n\r\n    parse auxiliary feed\r\n",
  )
  f.seed(1)
  json_inspect(
    f.internet_jwt(),
    content="eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzc3ODY0MzAsImV4cCI6MTU3Nzc4NjQ0MSwibmJmIjoxNTY1MzY5NTIwLCJpc3MiOiJIZWF0aGNvdGUgLSBKZXJkZSIsInN1YiI6ImEzZTBhNjgyLTNjZjUtNGJlZS1hMTAyLWUxNmY4YjVhZDBjZiIsImF1ZCI6IjRjMTdlNDQyLTBhMzQtNDcwOS04MjliLTE2YjYwOGE4ZjllMiIsImp0aSI6ImM2MmU1Y2JlLTljNTQtNGU2Zi05YTkxLWY3OTYzZTkwOTU4ZSJ9.UC0VGZa8VH4KKVI7111fRxyQ7hAYy1NeOoRKy83726dIy04XzcfKcAYQeuCP914u",
  )
  f.seed(1)
  json_inspect(f.object_entry({ "a": 1, "b": 2, "c": 3 }), content=["b", 2])
}

///|
test "upstream parity seed 42" {
  let f = @faker.Faker(seed=42)
  f.seed(42)
  json_inspect(f.git_commit_date(), content="Tue Dec 31 08:59:19 2019 +1100")
  f.seed(42)
  json_inspect(
    f.git_commit_entry(),
    content="commit ead331ddf0fc4446b96d368ab4bd1d31efb62f92\r\nAuthor: Susan.Hahn <Susan_Hahn92@yahoo.com>\r\nDate: Tue Dec 31 04:42:12 2019 -1000\r\n\r\n    copy haptic card\r\n",
  )
  f.seed(42)
  json_inspect(
    f.internet_jwt(),
    content="eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJpYXQiOjE1Nzc3ODI3NjAsImV4cCI6MTU3Nzg0NjAwNCwibmJmIjoxNTg0MDU5Mzg4LCJpc3MiOiJTdHJlaWNoIC0gQXVmZGVyaGFyIiwic3ViIjoiZmQzMjI0ODYtNDkyNC00NTdjLTkzODktMDkyMWZmYzQxYTcxIiwiYXVkIjoiMGU0YTQ4ODItZmNmZS00OWUxLTgzMDUtNjRkNTQ4MmMxZmMzIiwianRpIjoiZGJiYzE1MWQtOTUxNC00NWJhLWFlNzEtYmM4Yzc4NjAxMGE1In0.UfpKe4h9VODSNbTxOTj6eqOR0vpd7kWkwHmYXfuih2Bv3hUe8uZfFLeJmDDx5Pjb",
  )
  f.seed(42)
  json_inspect(f.object_entry({ "a": 1, "b": 2, "c": 3 }), content=["b", 2])
}

///|
test "upstream parity seed 12345" {
  let f = @faker.Faker(seed=12345)
  f.seed(12345)
  json_inspect(f.git_commit_date(), content="Tue Dec 31 22:18:37 2019 -0400")
  f.seed(12345)
  json_inspect(
    f.git_commit_entry(),
    content="commit 644cdfeaeaf026ebdffefa79afeb30bd0abd1dac\r\nAuthor: Boyd.Kohler53 <Boyd_Kohler15@yahoo.com>\r\nDate: Tue Dec 31 09:03:22 2019 +0900\r\n\r\n    synthesize haptic circuit\r\n",
  )
  f.seed(12345)
  json_inspect(
    f.internet_jwt(),
    content="eyJhbGciOiJIUzM4NCIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzc4MzA3MTgsImV4cCI6MTU3Nzg0NjYwOSwibmJmIjoxNTU5MjAyODI2LCJpc3MiOiJPYmVyYnJ1bm5lci1Sb2dhaG4gTExDIiwic3ViIjoiYmYwMTRhY2QtZmJhYi00NzU3LWJiZmEtYzIwY2UwNzg5MGViIiwiYXVkIjoiOGMxMzQ3N2ItMjgyYy00ZTkyLTk3NmQtZTY1OTMyYmM5ZmFlIiwianRpIjoiNWI4MzNjN2UtZjg0Yi00NTczLWE1YTUtY2NkZjFlNWRlMDM0In0.58vGREAIfTr1XEvGuVv4zCWpg6us1HIJp0UMajBm9aRhAspSGh3cVQX3zt1npBFQ",
  )
  f.seed(12345)
  json_inspect(f.object_entry({ "a": 1, "b": 2, "c": 3 }), content=["c", 3])
}

///|
test "upstream parity seed 4294967295" {
  let f = @faker.Faker(seed=4294967295)
  f.seed(4294967295)
  json_inspect(f.git_commit_date(), content="Tue Dec 31 02:20:35 2019 +1000")
  f.seed(4294967295)
  json_inspect(
    f.git_commit_entry(),
    content="commit ebb0fd3ecf973ecda4f5dbc0dbd29cabd008e742\r\nMerge: aef48ab 6fcfb3d\r\nAuthor: Hayden Kelly <Hayden.Kelly36@hotmail.com>\r\nDate: Tue Dec 31 16:39:03 2019 -1000\r\n\r\n    reboot wireless system\r\n",
  )
  f.seed(4294967295)
  json_inspect(
    f.internet_jwt(),
    content="eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1Nzc3NTg4MzUsImV4cCI6MTU3NzgyNzAwOCwibmJmIjoxNTk1NDk3MTg3LCJpc3MiOiJDb25yb3kgLSBXeW1hbiIsInN1YiI6IjY1MmVkZTczLWYzOWMtNDkwOS05OGUxLTdkN2M5MDA1YTUyMSIsImF1ZCI6ImZhMzViYzRhLThmYzItNDljNi04NjgyLTYxN2ExMTM4NzU3YiIsImp0aSI6ImRmZjllNzE1LWUyYmItNDlkZS04YWVmLTg2ODJhNjhiMzQwYiJ9.uggqzEPYDeggJAklbes8ao0L4ueKjxr3k6xKDHo7qFiK4kkbcp2JpLJZtWe6A1PK",
  )
  f.seed(4294967295)
  json_inspect(f.object_entry({ "a": 1, "b": 2, "c": 3 }), content=["a", 1])
}
