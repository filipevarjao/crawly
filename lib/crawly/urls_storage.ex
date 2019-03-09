defmodule Crawly.URLStorage do
  @moduledoc """
  URLS Storage, a module responsible for storing urls for crawling
  """

  @doc """
  Storing URL

  ## Examples

      iex> Crawly.URLStorage.store_url
      :ok

  """
  require Logger

  use GenServer

  def store_url(url) do
    Logger.info("Stored url is: #{inspect(url)}")
  end

  def start_link() do
    GenServer.start_link(__MODULE__, [], name: __MODULE__)
  end

  def init(_args) do
    {:ok, %{}}
  end
end