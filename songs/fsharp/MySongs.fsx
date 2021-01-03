module MySongs

type MyTags = List<string>
type MySong = { Title: string; Tags: Option<MyTags> }

let songs : List<MySong> = [
  { Title = "Cantaloupe Island";
    Tags  = Some ["60s"; "jazz"]};
  { Title = "Let It Be";
    Tags  = Some ["60s"; "rock"]};
  { Title = "Knockin' on Heaven's Door";
    Tags  = Some ["70s"; "rock"]};
  { Title = "Emotion";
    Tags  = Some ["70s"; "pop"]};
  { Title = "The River";
    Tags  = None};
  ]
