package delight.rhinosandox.tests;

import delight.rhinosandox.RhinoSandbox;
import delight.rhinosandox.RhinoSandboxes;
import org.junit.Test;

@SuppressWarnings("all")
public class TestInstanceScope {
  @Test
  public void test_instance_scopes() {
    final RhinoSandbox sandbox = RhinoSandboxes.create();
  }
}
