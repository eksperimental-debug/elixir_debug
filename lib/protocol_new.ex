import Kernel, except: [defprotocol: 2]
import ProtocolPatched, only: [defprotocol: 2]

defprotocol ProtocolNew do
  # @callback default_port(uri_info :: URI.t()) :: integer

  @spec with_specs(any(), keyword()) :: tuple()
  def with_specs(term, options \\ [])

  def without_specs(term, options \\ [])

  @optional_callbacks with_specs: 1, without_specs: 1
end

defimpl ProtocolNew, for: Map do
  def with_specs(x, options) do
    {x, options}
  end

  def without_specs(x, options) do
    {x, options}
  end
end
