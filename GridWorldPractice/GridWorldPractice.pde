import info.gridworld.actor.*;
import info.gridworld.grid.*;
import java.awt.Color;

Actor a;
slideLeftActor p;
SuperBug b;
DeathRock d;
ChangeColorActor cca;

STSActor s;
HulkActor h;
NoMoreActor nma;
HomeBug hb;
RainbowBug rb;
BoxBug  bb;

void setup(){
  surface.setVisible(false);
  ActorWorld world = new ActorWorld();
  world.show();
  
  //a = new Actor();
  //world.add(a);
  
  //p = new slideLeftActor();
  
  //b = new SuperBug(world);
  
  //d = new DeathRock(world);
  
  h = new HulkActor(world);
  
  s = new STSActor(world);
  
  cca = new ChangeColorActor(world);
  
  nma = new NoMoreActor(world);
  
  hb = new HomeBug(world);
  
  rb = new RainbowBug(world);
  
  bb = new BoxBug(world, 5);
}
