// The Boid class

class Boid {

   PVector position;
   PVector velocity;
   PVector acceleration;
   
   float r;
   // Maximum steering force
   float maxSteer;
   // Maximum speed
   float maxSpeed;

    // This is a new PVector method not yet implemented in JS
    // velocity = PVector.random2D();
     Boid(float x, float y){
       acceleration = new PVector(0, 0);
       
       float angle = random(TWO_PI);
       
       velocity = new PVector(cos(angle), sin(angle));
       
       position = new PVector(x, y);
       
       //change these when I feel like it
       r = 2.0;
       maxSteer = 0.3;
       maxSpeed = 2.0;
     }

    void run(ArrayList<Boid> boids){
      //run all of my functions
    }

    void applyForce(PVector 
    // We could add mass here if we want A = F / M

  // We accumulate a new acceleration each time based on three rules
    // Separation
    // Alignment
    // Cohesion
    // Arbitrarily weight these forces
    // Add the force vectors to acceleration

  // Method to update position
    // Update velocity
    // Limit speed
    // Reset accelertion to 0 each cycle

  // A method that calculates and applies a steering force towards a target
  // STEER = DESIRED MINUS VELOCITY
    // A vector pointing from the position to the target
    // Scale to maximum speed
    
    // Above two lines of code below could be condensed with new PVector setMag() method
    // Not using this method until Processing.js catches up
    // desired.setMag(maxspeed);

    // Steering = Desired minus Velocity
    // Limit to maximum steering force

    // Draw a triangle rotated in the direction of velocity
    // heading2D() above is now heading() but leaving old syntax until Processing.js catches up


  // Wraparound
 

  // Separation
  // Method checks for nearby boids and steers away
  
    // For every boid in the system, check if it's too close
    
      // If the distance is greater than 0 and less than an arbitrary amount (0 when you are yourself)
        // Calculate vector pointing away from neighbor
        // Weight by distance
        // Keep track of how many

    // Average -- divide by how many


    // As long as the vector is greater than 0

      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // steer.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity


  // Alignment
  // For every nearby boid in the system, calculate the average velocity

      // First two lines of code below could be condensed with new PVector setMag() method
      // Not using this method until Processing.js catches up
      // sum.setMag(maxspeed);

      // Implement Reynolds: Steering = Desired - Velocity
      
  // Cohesion
  // For the average position (i.e. center) of all nearby boids, calculate steering vector towards that position
  // Start with empty vector to accumulate all positions
   // Add position
       // Steer towards the position
}
