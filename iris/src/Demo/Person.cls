/// Description
Class Demo.Person Extends %Persistent
{

/// Description
Property Name As %String;

Storage Default
{
<Data name="PersonDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
</Data>
<DataLocation>^Demo.PersonD</DataLocation>
<DefaultData>PersonDefaultData</DefaultData>
<IdLocation>^Demo.PersonD</IdLocation>
<IndexLocation>^Demo.PersonI</IndexLocation>
<StreamLocation>^Demo.PersonS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
