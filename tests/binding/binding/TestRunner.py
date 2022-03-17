import unittest
from py4godot import *
import PythonTest

DEFAULT_NODE = None

@gdclass
class TestRunner(Spatial):

	def __init__(self):
		print("__init__")
		self._node = DEFAULT_NODE
	# creating a property which can be edited in the editor. Hint and hint_string are optional
	@gdproperty(NodePath, NodePath())
	def node(self):
		return self._node
	@node.setter
	def node(self, value):
		self._node = value
	@gdmethod
	def _ready(self):
		print("##########start#############")
		node = self.get_node(self._node)
		PythonTest.objectToTest = node
		print("node:",node)
		print(node.get_script())
		print(dir(node))
		print(node.call(String("hallo")))
		
		
		suite = unittest.TestLoader().loadTestsFromModule(PythonTest)
		res = unittest.TextTestRunner().run(suite)
		if len(res.failures) == 0:
			self.get_tree().quit(0)
		else:
			self.get_tree().quit(1)
		print(self._node)
