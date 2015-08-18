package delight.rhinosandox.tests

import delight.rhinosandox.RhinoSandboxes
import delight.rhinosandox.exceptions.ScriptCPUAbuseException
import org.junit.Test

class TestCPUViolationAndCatch {
	
	@Test(expected=ScriptCPUAbuseException)
	def void test_catch() {
		
		val sandbox = RhinoSandboxes.create
		
		sandbox.instructionLimit = 200000
		
		sandbox.eval("try { while (true) { }; } catch (e) { }")
		
	}
	
}