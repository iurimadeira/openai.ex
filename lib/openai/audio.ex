defmodule OpenAI.Audio do
  @moduledoc false
  alias OpenAI.Client
  alias OpenAI.Config

  @base_url "/v1/audio"
  def transcriptions_url(), do: "#{@base_url}/transcriptions"
  def translations_url(), do: "#{@base_url}/translations"

  def transcription(file_path, params, config \\ %Config{}) do
    transcriptions_url()
    |> Client.multipart_api_post(file_path, "file", params, config)
  end

  def translation(file_path, params, config \\ %Config{}) do
    translations_url()
    |> Client.multipart_api_post(file_path, "file", params, config)
  end
end
