void main() {
  Graph graph = Graph();

  graph.addVertex(0);
  graph.addVertex(1);
  graph.addVertex(2);
  graph.addVertex(3);
  graph.addVertex(4);

  graph.addEdge(0, 1);
  graph.addEdge(0, 2);
  graph.addEdge(1, 3);
  graph.addEdge(2, 4);

  print("Breadth First Search starting from vertex 0:");
  graph.breadthFirstSearch(0);
}

class Graph {
  Map<int, List<int>> adjacencyList = {};

  Graph();

  void addVertex(int vertex) {
    adjacencyList[vertex] = [];
  }

  void addEdge(int source, int destination) {
    adjacencyList[source]?.add(destination);
  }

  void breadthFirstSearch(int startVertex) {
    Set<int> visited = {};
    List<int> queue = [];

    visited.add(startVertex);
    queue.add(startVertex);

    while (queue.isNotEmpty) {
      int currentVertex = queue.removeAt(0);
      print(currentVertex);

      for (int neighbor in adjacencyList[currentVertex] ?? []) {
        if (!visited.contains(neighbor)) {
          visited.add(neighbor);
          queue.add(neighbor);
        }
      }
    }
  }
}
