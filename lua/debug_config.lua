dap.configurations.python = {
  {
    type = 'python',
    request = 'launch',
    name = "local debug config",
    program = "${file}",
    pythonPath = function()
      return os.getenv("CONDA_PREFIX") .. '/bin/python'
    end,
    args ={
	    -- "algorithm.slot_encoder=sam2_obj_ptr",
	    -- "algorithm=image_level_action",
    }
  },
}

