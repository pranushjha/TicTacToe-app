import 'package:flutter/material.dart';
import '../widgets/board_tile.dart'; // make sure path is correct

class TicTacToeHome extends StatefulWidget {
  const TicTacToeHome({super.key});

  @override
  State<TicTacToeHome> createState() => _TicTacToeHomeState();
}

class _TicTacToeHomeState extends State<TicTacToeHome> {
  // The game board
  List<String> board = List.filled(9, '');

  // Handle tapping a cell
  void _handleTap(int index) {
    setState(() {
      if (board[index] == '') {
        board[index] = 'X'; // Example: always X
      }
    });
  }

  // Reset the board
  void _resetBoard() {
    setState(() {
      board = List.filled(9, '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 300,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return BoardTile(
                    symbol: board[index],
                    onTap: () => _handleTap(index),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetBoard,
              child: const Text('Reset Game'),
            ),
          ],
        ),
      ),
    );
  }
}
