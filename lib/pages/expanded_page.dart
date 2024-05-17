import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            // flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(16),
                    alignment: Alignment.bottomRight,
                    child: const SizedBox(),
                  ),
                ),
                const Divider(height: 1),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            _buildButton(
                                color: Colors.black87,
                                icon: Icons.expand_circle_down_outlined,
                                isLabel: false),
                            _buildButton(
                                color: Colors.black87,
                                icon: Icons.cleaning_services,
                                isLabel: false),
                            _buildButton(
                                color: Colors.black87,
                                icon: CupertinoIcons.clear_thick_circled,
                                isLabel: false),
                            _buildButton(
                                color: Colors.black87,
                                icon: CupertinoIcons.divide,
                                isLabel: false),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            _buildButton(color: Colors.black26, label: "("),
                            _buildButton(color: Colors.black26, label: ")"),
                            _buildButton(color: Colors.black26, label: "%"),
                            _buildButton(
                                color: Colors.black87,
                                icon: CupertinoIcons.clear,
                                isLabel: false),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            _buildButton(color: Colors.black26, label: "7"),
                            _buildButton(color: Colors.black26, label: "8"),
                            _buildButton(color: Colors.black26, label: "9"),
                            _buildButton(color: Colors.black87, label: "-"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            _buildButton(color: Colors.black26, label: "4"),
                            _buildButton(color: Colors.black26, label: "5"),
                            _buildButton(color: Colors.black26, label: "6"),
                            _buildButton(color: Colors.black87, label: "+"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                _buildButton(color: Colors.black26, label: "1"),
                                _buildButton(color: Colors.black26, label: "0"),
                              ],
                            ),
                            Column(
                              children: [
                                _buildButton(color: Colors.black26, label: "2"),
                                _buildButton(color: Colors.black26, label: "00"),
                              ],
                            ),
                            Column(
                              children: [
                                _buildButton(color: Colors.black26, label: "3"),
                                _buildButton(color: Colors.black26, label: "."),
                              ],
                            ),
                            Column(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: Container(
                                        alignment: Alignment.center,
                                        width:
                                        MediaQuery.of(context).size.width /
                                            4,
                                        color: Colors.green,
                                        child: const Text('='))),
                                // _buildButton('2'),
                                // _buildButton('3'),
                                // _buildButton('-'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
      {String label = "",
        IconData icon = Icons.abc,
        bool isLabel = true,
        Color color = Colors.white}) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        color: color,
        alignment: Alignment.center,
        child: isLabel ? Text(label) : Icon(icon),
      ),
    );
  }
}
