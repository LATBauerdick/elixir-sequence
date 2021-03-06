defmodule Sequence do
  use Application

  def start(_type, _args) do
    Sequence.Supervisor.start_link(
      { Application.get_env(:sequence, :initial_number), 
        Application.get_env(:sequence, :initial_delta)
      }
    )
  end
end
