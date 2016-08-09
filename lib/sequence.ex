defmodule Sequence do
  use Application

  def start(_type, _args) do
    Sequence.Supervisor.start_link(
      { Application.get_env(:sequence, :initial_number), 1}
    )
  end
end
