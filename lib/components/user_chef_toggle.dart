import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zaika/controller/role_controller.dart';

class UserChefToggle extends StatelessWidget {
  const UserChefToggle({super.key});

  @override
  Widget build(BuildContext context) {
    // Outer container background
    final bgColor = Colors.grey[200];

    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(8), 
      child: Obx(() => Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => roleController.isUserSelected.value = true,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: roleController.isUserSelected.value
                          ? Colors.black
                          : bgColor, // black if selected
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "User",
                        style: TextStyle(
                          color: roleController.isUserSelected.value
                              ? Colors.white
                              : Colors.grey[900], // white if selected
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Chef Section
              Expanded(
                child: GestureDetector(
                  onTap: () => roleController.isUserSelected.value = false,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      color: !roleController.isUserSelected.value
                          ? Colors.black
                          : bgColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Chef",
                        style: TextStyle(
                          color: !roleController.isUserSelected.value
                              ? Colors.white
                              : Colors.grey[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
