import org.car2x.veins.nodes.RSU;
import org.car2x.veins.nodes.Scenario;
import org.car2x.veins.modules.application.traci.CloudServer;

network RSUExampleScenario extends Scenario
{
    parameters:
        playgroundSizeX = default(5000m);
        playgroundSizeY = default(5000m);
        playgroundSizeZ = default(50m);

    submodules:
        rsu[2]: RSU {
            parameters:
                @display("i=device/antennatower;is=vl");
        }

        cloudServer: CloudServer {
            parameters:
                @display("p=400,50;i=device/server;is=l");
        }
}
