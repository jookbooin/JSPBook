package ch04.com.dao;

//public class Person implements java.io.Serializable {
public class Person
{	
	private int id = 12345678 ;
	private String  name= "홍길동";
	
	public Person() {  }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
