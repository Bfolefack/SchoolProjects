
import info.gridworld.actor.*;
import info.gridworld.grid.*;
import java.awt.Color;

void setup()
{
  ActorWorld aw = new ActorWorld();
  aw.show();
  //Actor a = new Actor();
  //aw.add(a);
  //Bug b = new Bug();
  //aw.add(b);
  //a.setColor(Color.GREEN);
  //b.setColor(new Color(25, 70, 15));
  Location l1 = new Location(2, 2);
  Bug c1 = new Bug(new Color(0, 0, 0));
  aw.add(l1, c1);
  
  Location l2 = new Location(2, 4);
  Bug c2 = new Bug(new Color(0, 0, 0));
  aw.add(l2, c2);
  
  Location l3 = new Location(3, 2);
  Bug c3 = new Bug(new Color(0, 0, 0));
  aw.add(l3, c3);
  
  Location l4 = new Location(3, 4);
  Bug c4 = new Bug(new Color(0, 0, 0));
  aw.add(l4, c4);
  
  Location l5 = new Location(5, 1);
  Bug c5 = new Bug(new Color(0, 0, 0));
  aw.add(l5, c5);
  
  Location l6 = new Location(6, 2);
  Bug c6 = new Bug(new Color(0, 0, 0));
  aw.add(l6, c6);
  
  Location l7 = new Location(6, 3);
  Bug c7 = new Bug(new Color(0, 0, 0));
  aw.add(l7, c7);
  
  Location l8 = new Location(6, 4);
  Bug c8 = new Bug(new Color(0, 0, 0));
  aw.add(l8, c8);
  
  Location l9 = new Location(5, 5);
  Bug c9 = new Bug(Color.BLACK);
  aw.add(l9, c9);
  
  Location l10 = new Location(2,0);
  Rock c10 = new Rock(Color.YELLOW);
  aw.add(l10, c10);
  
  Location l11 = new Location(3,0);
  Rock c11 = new Rock(Color.YELLOW);
  aw.add(l11, c11);
  
  Location l12 = new Location(4,0);
  Rock c12 = new Rock(Color.YELLOW);
  aw.add(l12, c12);
  
  Location l13 = new Location(5,0);
  Rock c13 = new Rock(Color.YELLOW);
  aw.add(l13, c13);
  
  Location l14 = new Location(6,0);
  Rock c14 = new Rock(Color.YELLOW);
  aw.add(l14, c14);
  
  Location l15 = new Location(7,1);
  Rock c15 = new Rock(Color.YELLOW);
  aw.add(l15, c15);
  
  Location l16 = new Location(7,2);
  Rock c16 = new Rock(Color.YELLOW);
  aw.add(l16, c16);
  
  Location l17 = new Location(7,3);
  Rock c17 = new Rock(Color.YELLOW);
  aw.add(l17, c17);
  
  Location l18 = new Location(7,4);
  Rock c18 = new Rock(Color.YELLOW);
  aw.add(l18, c18);
  
  
  Location l19 = new Location(7,5);
  Rock c19 = new Rock(Color.YELLOW);
  aw.add(l19, c19);
  
  
  Location l20 = new Location(6,6);
  Rock c20 = new Rock(Color.YELLOW);
  aw.add(l20, c20);
  
  
  Location l21 = new Location(5,6);
  Rock c21 = new Rock(Color.YELLOW);
  aw.add(l21, c21);
  
  Location l22 = new Location(4,6);
  Rock c22 = new Rock(Color.YELLOW);
  aw.add(l22, c22);
  
  Location l23 = new Location(3,6);
  Rock c23 = new Rock(Color.YELLOW);
  aw.add(l23, c23);
  
  Location l24 = new Location(2,6);
  Rock c24 = new Rock(Color.YELLOW);
  aw.add(l24, c24);
  
  Location l25 = new Location(1,5);
  Rock c25 = new Rock(Color.YELLOW);
  aw.add(l25, c25);
  
  Location l26 = new Location(1,4);
  Rock c26 = new Rock(Color.YELLOW);
  aw.add(l26, c26);
  
  Location l27 = new Location(1,3);
  Rock c27 = new Rock(Color.YELLOW);
  aw.add(l27, c27);
  
  Location l28 = new Location(1,2);
  Rock c28 = new Rock(Color.YELLOW);
  aw.add(l28, c28);
  
  Location l29 = new Location(1,1);
  Rock c29 = new Rock(Color.YELLOW);
  aw.add(l29, c29);
  
  
}
