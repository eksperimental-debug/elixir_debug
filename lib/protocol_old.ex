defprotocol ProtocolOld do
  @spec with_specs(any(), keyword()) :: tuple()
  def with_specs(term, options \\ [])

  def without_specs(term, options \\ [])

  # this will give a CompileError in the old protocol version
  # @optional_callbacks with_specs: 1, without_specs: 1
end

defimpl ProtocolOld, for: Map do
  def with_specs(x, options) do
    {x, options}
  end

  def without_specs(x, options) do
    {x, options}
  end
end
