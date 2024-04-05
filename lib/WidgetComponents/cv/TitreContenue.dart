import 'package:flutter/material.dart';

Container titreContenue(String dataTitle, double largeur) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            
            child: Container(
              width: largeur,
              
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              color: const Color.fromARGB(255, 25, 25, 26),
              child: Text(
                
                dataTitle,
                style: const TextStyle(
                  
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            height: 2,
            width: largeur,
            margin: EdgeInsets.only(top: 3),
            color: const Color.fromARGB(255, 25, 25, 26),
          ),
        ],
      ),
    );
  }
