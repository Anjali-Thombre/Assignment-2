import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello, Human!",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          Icon(Icons.shopify),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8.0, 20, 0),
        child: Column(
          children: [
            // Card with text and image
            Center(
              child: Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // Left side with text and button
                      Expanded(
                        child: Container(
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Your ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "Catrine ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text:
                                        "will get vaccination tomorrow at 07.00 am!",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.purple,
                                ),
                                child: Text("See Details"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Right side with square image on purple background
                      Container(
                        height: 200,
                        width: 200,
                        padding: EdgeInsets.only(left: 100),
                        child: Center(
                          child: ClipRect(
                            child: Image.network(
                              "https://img.freepik.com/premium-photo/white-mixed-breed-cat-isolated-white_191971-20582.jpg?ga=GA1.2.1481967269.1723104327&semt=ais_hybrid",
                              width: 100,
                              height: 160,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Adding space between card and search bar
            SizedBox(height: 20),
            // Search bar with icon and hint text
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Find best vaccinate, treatments',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
            // Adding space between search bar and buttons
            SizedBox(height: 20),
            // Scrollable row with buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButton("Vaccine"),
                  _buildButton("Surgery"),
                  _buildButton("Spa & Treatment"),
                  _buildButton("Consultation"),
                ],
              ),
            ),
            // Adding space between buttons and cards
            SizedBox(height: 20),
            // Scrollable column with doctor details
            Expanded(
              child: ListView(
                children: [
                  _buildDoctorCard(
                    "Dr. John Doe",
                    "Vaccine",
                    "Cat",
                    "https://media.istockphoto.com/id/1403523200/photo/happy-female-gp-doctor-in-white-coat-looking-at-camera.jpg?s=612x612&w=0&k=20&c=Uu7AnupGeTfcy5LHG2tKoBKYm1H_OR1dmjhhIgXKFx0=",
                  ),
                  _buildDoctorCard(
                    "Dr. Jane Smith",
                    "Surgery",
                    "Dog",
                    "https://media.istockphoto.com/id/1460982114/photo/portrait-happy-indian-male-doctor-with-stethoscope-standing-cross-arms-looking-at-camera.jpg?s=1024x1024&w=is&k=20&c=enngeinwLVWt5-d_m4zH8RgiK7Eag_vfSS__lh2-2ZU=",
                  ),
                  _buildDoctorCard(
                    "Dr. Emily Johnson",
                    "Spa & Treatment",
                    "Cat",
                    "https://media.istockphoto.com/id/1403523200/photo/happy-female-gp-doctor-in-white-coat-looking-at-camera.jpg?s=1024x1024&w=is&k=20&c=X2hcPgxRefyG4bs3aZxfUkFm-r5-ZnTvY6hJHC5Pwd4=",
                  ),
                  _buildDoctorCard(
                    "Dr. Michael Brown",
                    "Consultation",
                    "Dog",
                    "https://media.istockphoto.com/id/1222617754/photo/male-doctor-stock-photo.jpg?s=1024x1024&w=is&k=20&c=GpQiGKfzzQQv7jELHZDD1y7dxi95XdOhwslktWwpjCg=",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build the buttons
  Widget _buildButton(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: ElevatedButton(
        onPressed: () {
          // Add your onPressed action here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          side: BorderSide(color: Colors.black), // Black border
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded rectangular border
          ),
        ),
        child: Text(label),
      ),
    );
  }

  // Helper method to build doctor cards
  Widget _buildDoctorCard(String name, String service, String petName, String imageUrl) {
    return Card(
      // elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            // Doctor's image
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(right: 12),
              child: ClipOval(
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Doctor's details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    service,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(
                        petName == "Cat" ? Icons.pets : Icons.pets_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(width: 5),
                      Text(petName, style: TextStyle(fontSize: 16)),
                    ],
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
