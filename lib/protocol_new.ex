import Kernel, except: [defprotocol: 2]
import ProtocolPatched, only: [defprotocol: 2]

defprotocol ProtocolNew do
  # @spec to_empty(any(), list()) :: tuple()
  def to_empty(term, options \\ [])

  # def to_empty(x, beta, gamma, epsilon)

  # @optional_callbacks extract: 1, to_empty: 1
  @optional_callbacks to_empty: 1
end

defimpl ProtocolNew, for: Map do
  def to_empty(x, options) do
    {x, options}
  end

  def to_empty(x, beta, gamma, epsilon) do
    {x, beta, gamma, epsilon}
  end
end
