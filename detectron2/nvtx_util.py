import torch

def range_push_handler(msg):
  def handler(grad):
    torch.cuda.nvtx.range_push(msg)
    return None
  return handler

def range_pop_handler():
  def handler(grad):
    torch.cuda.nvtx.range_pop()
    return None
  return handler