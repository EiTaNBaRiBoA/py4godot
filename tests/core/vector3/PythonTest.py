import unittest
import time
import math
from py4godot import *


class PythonTest(unittest.TestCase):

	def test_equal(self):
		self.assertEqual(Vector3(1,1,1), Vector3(1,1,1))
		self.assertEqual(Vector3(0, 0, 0), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 0, 1), Vector3(0, 0, 1))
		self.assertEqual(Vector3(1, 0, 0), Vector3(1, 0, 0))
		self.assertEqual(Vector3(1, 1, 0), Vector3(1, 1, 0))
		self.assertEqual(Vector3(100, 0, 0), Vector3(100, 0, 0))
		self.assertEqual(Vector3(0, 1, 0), Vector3(0, 1, 0))
		self.assertEqual(Vector3(0, -1, 0), Vector3(0, -1, 0))
		self.assertEqual(Vector3(0, -1, 1), Vector3(0, -1, 1))

	def test_normailized(self):
		self.assertEqual(Vector3(1,0,0).normalized(), Vector3(1,0,0))
		self.assertEqual(Vector3(5,0,0).normalized(), Vector3(1,0,0))
		self.assertEqual(Vector3(-1,0,0).normalized(), Vector3(-1,0,0))
		self.assertEqual(Vector3(0,-1,0).normalized(), Vector3(0,-1,0))
		self.assertEqual(Vector3(0,5,0).normalized(), Vector3(0,1,0))
		self.assertEqual(Vector3(0,0,10).normalized(), Vector3(0,0,1))
		self.assertEqual(Vector3(0,0,0).normalized(), Vector3(0,0,0))
		self.assertEqual(Vector3(0,2.5,0).normalized(), Vector3(0,1,0))

	def test_inverse(self):
		self.assertEqual(Vector3(2,2,2).inverse(), Vector3(0.5,0.5,0.5))
		self.assertEqual(Vector3(1,1,1).inverse(), Vector3(1,1,1))
		self.assertEqual(Vector3(1,2,4).inverse(), Vector3(1,0.5,0.25))
		self.assertEqual(Vector3(4,2,1).inverse(), Vector3(0.25,0.5,1))
		self.assertEqual(Vector3(5,5,5).inverse(), Vector3(0.2,0.2,0.2))

	def test_length(self):
		self.assertEqual(Vector3(1,0,0).length(), 1)
		self.assertEqual(Vector3(2, 0, 0).length(), 2)
		self.assertEqual(Vector3(0, 2, 0).length(), 2)
		self.assertEqual(Vector3(0, 10, 0).length(), 10)
		self.assertEqual(Vector3(0, -2, 0).length(), 2)
		self.assertEqual(Vector3(0, 0, 1).length(), 1)
		self.assertEqual(Vector3(20, 0, 0).length(), 20)
		self.assertEqual(Vector3(1, 1, 0).length(),  1.4142135381698608)

	def test_length_squared(self):
		self.assertEqual(Vector3(1,0,0).length_squared(), 1)
		self.assertEqual(Vector3(2, 0, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 2, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 10, 0).length_squared(), 100)
		self.assertEqual(Vector3(0, -2, 0).length_squared(), 4)
		self.assertEqual(Vector3(0, 0, 1).length_squared(), 1)
		self.assertEqual(Vector3(20, 0, 0).length_squared(), 400)

	def test_is_normalized(self):
		self.assertTrue(Vector3(1,0,0).is_normalized)
		self.assertTrue(Vector3(0,1,0).is_normalized)
		self.assertTrue(Vector3(0,0,1).is_normalized)
		self.assertTrue(Vector3(-1,0,0).is_normalized)
		self.assertTrue(Vector3(0,-1,0).is_normalized)
		self.assertTrue(Vector3(0,0,-1).is_normalized)

	def test_distance_to(self):
		self.assertEqual(Vector3(1,0,0).distance_to(Vector3(0,0,0)), 1)
		self.assertEqual(Vector3(2,0,0).distance_to(Vector3(0,0,0)), 2)
		self.assertEqual(Vector3(1,1,0).distance_to(Vector3(0,1,0)), 1)
		self.assertEqual(Vector3(1,1,1).distance_to(Vector3(0,0,0)), 1.7320507764816284)
		
	def test_distance_squared_to(self):
		self.assertEqual(Vector3(1,0,0).distance_squared_to(Vector3(0,0,0)), 1)
		self.assertEqual(Vector3(2,0,0).distance_squared_to(Vector3(0,0,0)), 4)
		self.assertEqual(Vector3(3,1,0).distance_squared_to(Vector3(0,1,0)), 9)
		self.assertEqual(Vector3(1,1,1).distance_squared_to(Vector3(0,0,0)), 3)
		
	def test_angle_to(self):
		self.assertEqual(Vector3(1,0,0).angle_to(Vector3(0,1,0)), 1.5707963705062866)
		self.assertEqual(Vector3(1,0,0).angle_to(Vector3(0.5,0,0)), 0)
		self.assertEqual(Vector3(1,0,0).angle_to(Vector3(0.5,1,0)), 1.1071487665176392)
		self.assertEqual(Vector3(1,0,0).angle_to(Vector3(0,1,1)), 1.5707963705062866)
		self.assertEqual(Vector3(100,0,0).angle_to(Vector3(0,1,0)), 1.5707963705062866)

	def test_add_method(self):
		self.assertEqual(Vector3(1,0,0).add(Vector3(1,0,0)), Vector3(2,0,0))
		self.assertEqual(Vector3(-1, 0, 0).add(Vector3(1, 0, 0)), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 1, 0).add(Vector3(0, 1, 0)), Vector3(0, 2, 0))
		self.assertEqual(Vector3(0, 0, 1).add(Vector3(0, 0, 1)), Vector3(0, 0, 2))
		self.assertEqual(Vector3(0, -1, -1).add(Vector3(0, -1, -1)), Vector3(0, -2, -2))
		self.assertEqual(Vector3(0, -1, -1).add(Vector3(0, 1, 0)), Vector3(0, 0, -1))
		self.assertEqual(Vector3(10, 0, 0).add(Vector3(1, 0, 0)), Vector3(11, 0, 0))
		self.assertEqual(Vector3(0, 0, -10).add(Vector3(0, 0, 1)), Vector3(0, 0, -9))
		self.assertEqual(Vector3(0, -8, -5).add(Vector3(0, 2, 3)), Vector3(0, -6, -2))

	def test_add_operator(self):
		self.assertEqual(Vector3(1,0,0)+Vector3(1,0,0), Vector3(2,0,0))
		self.assertEqual(Vector3(-1, 0, 0)+Vector3(1, 0, 0), Vector3(0, 0, 0))
		self.assertEqual(Vector3(0, 1, 0)+Vector3(0, 1, 0), Vector3(0, 2, 0))
		self.assertEqual(Vector3(0, 0, 1)+Vector3(0, 0, 1), Vector3(0, 0, 2))
		self.assertEqual(Vector3(0, -1, -1)+Vector3(0, -1, -1), Vector3(0, -2, -2))
		self.assertEqual(Vector3(0, -1, -1)+Vector3(0, 1, 0), Vector3(0, 0, -1))
		self.assertEqual(Vector3(10, 0, 0)+Vector3(1, 0, 0), Vector3(11, 0, 0))
		self.assertEqual(Vector3(0, 0, -10)+Vector3(0, 0, 1), Vector3(0, 0, -9))
		self.assertEqual(Vector3(0, -8, -5)+Vector3(0, 2, 3), Vector3(0, -6, -2))

