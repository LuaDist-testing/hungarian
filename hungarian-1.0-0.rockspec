-- This file was automatically generated for the LuaDist project.

package = "hungarian"
version = "1.0-0"

-- LuaDist source
source = {
  tag = "1.0-0",
  url = "git://github.com/LuaDist-testing/hungarian.git"
}
-- Original source
-- source = {
--    url = "git://github.com/yenchanghsu/hungarian.torch.git",
--    tag = "master"
-- }

description = {
   summary = "hungarian algorithm",
   detailed = [[
   ]],
   homepage = "https://github.com/yenchanghsu/hungarian.torch",
   license = "BSD"
}

dependencies = {
   "torch >= 7.0",
}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)"; 
$(MAKE)
   ]],
   install_command = "cd build && $(MAKE) install"
}