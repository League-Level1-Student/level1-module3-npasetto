
import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;


public class Gridworld {
public static void main(String[] args) {
	Random rand = new Random();
	World world = new World();
	Flower flower = new Flower();
	Flower flower2 = new Flower();
	world.show();
	Bug bug = new Bug();
	Bug bug2 = new Bug();
	Location location = new Location(5, 5);
	Location location2 = new Location(rand.nextInt(10),rand.nextInt(10));
	world.add(location, bug);
	world.add(location2, bug2);
	bug.setColor(Color.BLUE);
	bug.setDirection(180);
	world.add(location.getAdjacentLocation(90), flower);
	world.add(location.getAdjacentLocation(270), flower2);
	for (int i = 0; i < 10; i++) {
		
	
	for (int j = 0; j < 10; j++) {
		
	
	world.add(new Location(i,j), new Flower());
	}
	}

}
}
