import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pixabay/App/Controller/controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // Detect screen size to adjust the number of grid columns dynamically
    final screenWidth = MediaQuery.of(context).size.width;
    final int crossAxisCount =
        screenWidth ~/ 150; // Adjust number of columns based on screen width

    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text("Image Gallery")),
          body: controller.isLoading && controller.images.isEmpty
              ? const Center(
                  child:
                      CircularProgressIndicator()) // Show loading spinner if no images
              : NotificationListener<ScrollNotification>(


               /*Listens for scroll events and checks if the user has scrolled to the bottom of the list.
                 When scrolled to the bottom, it triggers the getData() method to load more images (pagination).*/

                  onNotification: (ScrollNotification scrollInfo) {
                    // Check if the user has scrolled to the bottom
                    if (!controller.isLoading &&
                        scrollInfo.metrics.pixels ==
                            scrollInfo.metrics.maxScrollExtent) {
                      // Trigger loading more images when scrolled to bottom
                      controller.getData();
                    }
                    return true;
                  },
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          crossAxisCount, // Dynamic number of columns
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio:
                          0.7, // Adjust aspect ratio for image size
                    ),
                    padding: const EdgeInsets.all(10),
                    itemCount: controller.images.length,
                    itemBuilder: (context, index) {
                      final image = controller.images[index];
                      return Card(
                        elevation: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Image section
                            Expanded(
                              child: Image.network(
                                image.webformatUrl!,
                                fit: BoxFit.cover,
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const Center(
                                      child: CircularProgressIndicator());
                                },
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(Icons.error),
                              ),
                            ),

                            // Details section with likes and views
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Likes: ${image.likes}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text("Views: ${image.views}"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
        );
      },
    );
  }
}
