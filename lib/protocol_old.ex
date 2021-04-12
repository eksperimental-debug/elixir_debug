defprotocol ProtocolOld do
  @spec to_empty(any(), list()) :: tuple()
  def to_empty(term, options \\ [])

  # def to_empty(x, beta, gamma, epsilon)

  # this will give a CompileError in the old protocol version
  # @optional_callbacks to_empty: 1
end

defimpl ProtocolOld, for: Map do
  def to_empty(x, options) do
    {x, options}
  end

  def to_empty(x, beta, gamma, epsilon) do
    {x, beta, gamma, epsilon}
  end
end
