// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:emook/Views/PrincipalView.dart';

class ChatbotView extends StatefulWidget {
  final String userId;
  late String Imascota = "";
  late String Nmascota = "";
  ChatbotView(
      {super.key,
      required this.userId,
      required this.Imascota,
      required this.Nmascota});

  @override
  _ChatbotViewState createState() => _ChatbotViewState();
}

class _ChatbotViewState extends State<ChatbotView> {
  TextEditingController _messageController = TextEditingController();
  List<String> _chatMessages = [];

  void _sendMessage() {
    String message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _chatMessages.add(message);
        _messageController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFeff1f8),
        child: Column(
          children: [
            Container(
              height: 60,
              color: const Color(0xFF736ced),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrincipalView(
                                  userId: widget.userId,
                                )),
                      );
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Chatbot',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Boba Milky',
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(widget.Imascota),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.Nmascota,
                            style: TextStyle(
                              color: Color(0xFF9f9fed),
                              fontFamily: 'Boba Milky',
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Lorem ipsum dolor sit amet consectetur adipiscing elit',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Sniglet',
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Hace 5 minutos',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Sniglet',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: _chatMessages.length,
                itemBuilder: (context, index) {
                  String message = _chatMessages[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFF736ced),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        message,
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _messageController,
                      decoration: const InputDecoration(
                        hintText: 'Envía un mensaje',
                        hintStyle: TextStyle(
                          fontFamily: 'Sniglet',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  FloatingActionButton(
                    onPressed: _sendMessage,
                    backgroundColor: const Color(0xFF736ced),
                    child: const Icon(Icons.send),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
