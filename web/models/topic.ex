defmodule Discuss.Topic do
  use Discuss.Web, :model

  schema "topics" do #find a table called topics with a title of type string
    field :title, :string
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title]) #object that is a changeset, returned by 'cast'
    |> validate_required([:title]) #will inspect props of changeset and decide if changeset is valid or not
  end
end
