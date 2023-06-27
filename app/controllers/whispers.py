import whisper
import sys
model = whisper.load_model("small")
result = model.transcribe("audio.mp3")
print ( result["text"].encode('utf-8').decode(sys.stdout.encoding))
