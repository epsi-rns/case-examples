using System;
using System.Linq;
using System.Threading.Channels;
using System.Threading.Tasks;

class Step17Channel
{
  public async Task Sender(ChannelWriter<string> writer)
  {
    MySongs mySongs = new MySongs();

    Array.ForEach(mySongs.songs, song => {
      if (song.Tags != null) {
        Array.ForEach(song.Tags, async (tag) => {
          await writer.WriteAsync(tag);
        });
      };
    });
   
    writer.Complete();

    // since all previous await wrapped in lambda,
    // we need to await something.
    await Task.FromResult(1);
    return;
  }

  public async Task Receiver(ChannelReader<string> reader)
  {
    string[] tags = new string[] {};

    while (await reader.WaitToReadAsync()) {
      if (reader.TryRead(out var tag)) {
        tags = tags.Append(tag).ToArray();
      }
    }

   Console.WriteLine("[{0}]",
      string.Join(", ", tags));
  }

  public async Task RunBoth()
  {
    var channel = Channel.CreateUnbounded<string>();

    Task consume = Receiver(channel.Reader); 
    Task produce = Sender(channel.Writer);

    await Task.WhenAll(produce, consume);
    return;
  }

  public void Show() {
    Task task = RunBoth();
    task.Wait();
  }
}


