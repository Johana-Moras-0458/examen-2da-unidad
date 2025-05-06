import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AspectRatio')),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 6),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.network(
                'https://raw.githubusercontent.com/Johana-Moras-0458/img/refs/heads/main/kuroko.png',
                // Replace with your actual image URL
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  // Handle errors during image loading
                  return const Center(child: Text('Failed to load image'));
                },
              ),
            ),
            const Text(
              'AspectRation of 3/2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            AspectRatio(
              aspectRatio: 3 / 1,
              child: Image.network(
                'https://raw.githubusercontent.com/Johana-Moras-0458/img/refs/heads/main/kuroko.png',
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  // Handle errors during image loading
                  return const Center(child: Text('Failed to load image'));
                },
              ),
            ),
            const Text(
              'AspectRation of 3/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 5 / 1,
              child: Image.network(
                'https://raw.githubusercontent.com/Johana-Moras-0458/img/refs/heads/main/kuroko.png',
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  // Handle errors during image loading
                  return const Center(child: Text('Failed to load image'));
                },
              ),
            ),
            const Text(
              'AspectRation of 5/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
