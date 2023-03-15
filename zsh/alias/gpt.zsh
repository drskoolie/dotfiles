function gpt ()
{
	~/github/llama.cpp/main -m ~/github/llama.cpp/models/7B/ggml-model-q4.bin -t 9 -n 128 -p $1
}

function gptn ()
{
	~/github/llama.cpp/main -m ~/github/llama.cpp/models/7B/ggml-model-q4.bin -t 9 -n $2 -p $1
}
