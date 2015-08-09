package delight.rhinosandox.tests

import delight.rhinosandox.RhinoSandboxes
import org.junit.Assert
import org.junit.Test

class TestClassAccess {
	 
	
	static class TestEmbed {
		public String value
		def void setValue(String s) {
			value = s
		}
	}
	
	@Test
	def void test_access_allowed() {
		val sandbox = RhinoSandboxes.create
		
		val embedded = new TestEmbed
		sandbox.inject("test",embedded)
		
		sandbox.eval("var x=1+1;test.setValue(''+x);")
		
		Assert.assertEquals("2", embedded.value)
		
	}
	
	@Test
	def void test_access_getClass_forbidden() {
		val sandbox = RhinoSandboxes.create
		
		val embedded = new TestEmbed
		sandbox.inject("test",embedded)
		
		println(sandbox.eval("test.getClass();"))
		
		println('here')
		
	}
	
}