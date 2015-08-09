package delight.rhinosandox

interface RhinoSandbox {

	
	/**
	 * Will add a global variable available to all scripts executed with this sandbox.
	 */
	def RhinoSandbox inject(String variableName, Object object)

	/**
	 * Sets the maximum instructions allowed for script execution.
	 */
	def RhinoSandbox setInstructionLimit(int limit)
	
	/**
	 * Sets the maximum allowed duration for scripts.
	 */
	def RhinoSandbox setMaxDuration(int limitInMs)

	/**
	 * Evaluate the given script with the global scope. That is all new global variables written will be available to all other scripts.
	 */
	def Object evalWithGlobalScope(String js)
	
	/**
	 * Evaluate a script with its own scope. It has access to all objects in the global scope but cannot add new ones.
	 */
	def Object eval(String js)

	
}