import numpy as np

def generate_sdf(inner, outer):
    sdf_template = '''<?xml version="1.0"?>

<sdf version='1.9'>
    <world name='track'>

        <!-- PHYSICS -->
        <physics name="1ms" type="ignored">
            <max_step_size>0.001</max_step_size>
            <real_time_factor>1.0</real_time_factor>
        </physics>

        <gravity>0 0 -9.8</gravity>
        <magnetic_field>6e-06 2.3e-05 -4.2e-05</magnetic_field>
        <atmosphere type='adiabatic'/>

        <!-- ......... -->

        <!-- PLUGINS -->
        <plugin name='gz::sim::systems::Physics' filename='gz-sim-physics-system'/>
        <plugin name='gz::sim::systems::UserCommands' filename='gz-sim-user-commands-system'/>
        <plugin name='gz::sim::systems::SceneBroadcaster' filename='gz-sim-scene-broadcaster-system'/>
        
        <gui fullscreen='0'>
            <!-- 3D scene -->
            <plugin filename="MinimalScene" name="3D View">
                <gz-gui>
                <title>3D View</title>
                <property type="bool" key="showTitleBar">false</property>
                <property type="string" key="state">docked</property>
                </gz-gui>

                <engine>ogre2</engine>
                <scene>scene</scene>
                <ambient_light>0.4 0.4 0.4</ambient_light>
                <background_color>0.8 0.8 0.8</background_color>
                <camera_pose>-6 0 6 0 0.5 0</camera_pose>
            </plugin>

            <!-- Plugins that add functionality to the scene -->
            <plugin filename="EntityContextMenuPlugin" name="Entity context menu">
                <gz-gui>
                <property key="state" type="string">floating</property>
                <property key="width" type="double">5</property>
                <property key="height" type="double">5</property>
                <property key="showTitleBar" type="bool">false</property>
                </gz-gui>
            </plugin>
            <plugin filename="GzSceneManager" name="Scene Manager">
                <gz-gui>
                <property key="resizable" type="bool">false</property>
                <property key="width" type="double">5</property>
                <property key="height" type="double">5</property>
                <property key="state" type="string">floating</property>
                <property key="showTitleBar" type="bool">false</property>
                </gz-gui>
            </plugin>
            <plugin filename="InteractiveViewControl" name="Interactive view control">
                <gz-gui>
                <property key="resizable" type="bool">false</property>
                <property key="width" type="double">5</property>
                <property key="height" type="double">5</property>
                <property key="state" type="string">floating</property>
                <property key="showTitleBar" type="bool">false</property>
                </gz-gui>
            </plugin>
            <plugin filename="CameraTracking" name="Camera Tracking">
                <gz-gui>
                <property key="resizable" type="bool">false</property>
                <property key="width" type="double">5</property>
                <property key="height" type="double">5</property>
                <property key="state" type="string">floating</property>
                <property key="showTitleBar" type="bool">false</property>
                </gz-gui>
            </plugin>
            <plugin name='World control' filename='WorldControl'>
                <gz-gui>
                    <title>World control</title>
                    <property type='bool' key='showTitleBar'>0</property>
                    <property type='bool' key='resizable'>0</property>
                    <property type='double' key='height'>72</property>
                    <property type='double' key='z'>1</property>
                    <property type='string' key='state'>floating</property>
                    <anchors target='3D View'>
                        <line own='left' target='left'/>
                        <line own='bottom' target='bottom'/>
                    </anchors>
                </gz-gui>
                <play_pause>1</play_pause>
                <step>1</step>
                <start_paused>1</start_paused>
            </plugin>
            <plugin name='World stats' filename='WorldStats'>
                <gz-gui>
                    <title>World stats</title>
                    <property type='bool' key='showTitleBar'>0</property>
                    <property type='bool' key='resizable'>0</property>
                    <property type='double' key='height'>110</property>
                    <property type='double' key='width'>290</property>
                    <property type='double' key='z'>1</property>
                    <property type='string' key='state'>floating</property>
                    <anchors target='3D View'>
                        <line own='right' target='right'/>
                        <line own='bottom' target='bottom'/>
                    </anchors>
                </gz-gui>
                <sim_time>1</sim_time>
                <real_time>1</real_time>
                <real_time_factor>1</real_time_factor>
                <iterations>1</iterations>
            </plugin>
            
            <plugin filename="VisualizeLidar" name="Visualize Lidar">
            </plugin>
            
            <plugin filename="ImageDisplay" name="Image Display">
            </plugin>

            <!-- Inspector -->
            <plugin filename="ComponentInspector" name="Component inspector">
                <ignition-gui>
                <property type="string" key="state">docked</property>
                </ignition-gui>
            </plugin>

            <!-- Entity tree -->
            <plugin filename="EntityTree" name="Entity tree">
                <ignition-gui>
                <property type="string" key="state">docked</property>
                </ignition-gui>
            </plugin>
        </gui>
        <!-- ......... -->

        <!-- SENSORS -->

        <plugin
        filename="gz-sim-sensors-system"
        name="gz::sim::systems::Sensors">
        <render_engine>ogre2</render_engine>
        </plugin>

        <!-- ......... -->
        
        <!-- AMBIENT -->

        <scene>
            <ambient>1 1 1 1</ambient>
            <background>0.8 0.8 0.8 1</background>
            <shadows>1</shadows>
        </scene>
        <light name='sun' type='directional'>
            <cast_shadows>1</cast_shadows>
            <pose>0 0 10 0 0 0</pose>
            <diffuse>0.8 0.8 0.8 1</diffuse>
            <specular>0.8 0.8 0.8 1</specular>
            <attenuation>
                <range>1000</range>
                <constant>0.9</constant>
                <linear>0.01</linear>
                <quadratic>0.001</quadratic>
            </attenuation>
            <direction>-0.5 0.1 -0.9</direction>
        </light>


        <model name='ground_plane'>
            <static>true</static>
            <link name='link'>
                <collision name='collision'>
                    <geometry>
                        <plane>
                        <normal>0 0 1</normal>
                        <size>100 100</size>
                        </plane>
                    </geometry>
                    
                    <surface>
                        <friction>
                            <dart/>
                        </friction>
                        <bounce/>
                        <contact/>
                    </surface>
                </collision>

                <visual name='visual'>
                    <geometry>
                        <plane>
                        <normal>0 0 1</normal>
                        <size>100 100</size>
                        </plane>
                    </geometry>
                    <material>
                        <ambient>0.1 0.1 0.1 1</ambient>
                        <diffuse>0.1 0.1 0.1 1</diffuse>
                        <specular>0.8 0.8 0.8 1</specular>
                    </material>
                </visual>

                <pose>0 0 0 0 -0 0</pose>

                <inertial>
                    <pose>0 0 0 0 -0 0</pose>
                    <mass>1</mass>
                    <inertia>
                        <ixx>1</ixx>
                        <ixy>0</ixy>
                        <ixz>0</ixz>
                        <iyy>1</iyy>
                        <iyz>0</iyz>
                        <izz>1</izz>
                    </inertia>
                </inertial>

                <enable_wind>false</enable_wind>

            </link>

            <pose>0 0 0 0 -0 0</pose>

            <self_collide>false</self_collide>
        </model>

        <!-- ......... -->

        <!-- TRACK -->    
        <model name='cones'>
            <pose>0 0 0 0 0 0</pose>
            {}
      <static>true</static>
      <self_collide>false</self_collide>
    </model>
  </world>
</sdf>
    
    '''

    cone_model_template = '''
    
      <link name='cone_{}_link'>
        <collision name='cone_{}_collision'>
          <geometry>
            <mesh>
              <uri>/home/ubuntu/psd_ws/src/psd_gazebo_worlds/world/models/cone/meshes/cone.stl</uri>
              <scale>0.001 0.001 0.001</scale>
            </mesh>
          </geometry>
        </collision>
        <visual name='cone_{}_visual'>
          <geometry>
            <mesh>
              <uri>/home/ubuntu/psd_ws/src/psd_gazebo_worlds/world/models/cone/meshes/cone.stl</uri>
              <scale>0.001 0.001 0.001</scale>
            </mesh>
          </geometry>
          <material>
            <ambient>{}</ambient>
            <diffuse>{}</diffuse>
            <specular>{}</specular>
          </material>
        </visual>
        <pose>{}</pose>
        <enable_wind>false</enable_wind>
      </link>'''

    cones = ""
    for i, coord in enumerate(inner):
        x, y, z, color = coord[0:4]

        pose = "{} {} {} 1.57 0 0".format(x, y ,z)

        #inner = yellow cones
        ambient = '1 1 0 1'
        diffuse = '1 1 0 1'
        specular = '1 1 0 1'

        cones += cone_model_template.format(i, i, i, ambient, diffuse, specular, pose)

    for i, coord in enumerate(outer):
        bias = len(inner)
        x, y, z, color = coord[0:4]

        pose = "{} {} {} 1.57 0 0".format(x, y ,z)

        #outer = blue cones
        ambient = '0 0 1 1'
        diffuse = '0 0 1 1'
        specular = '0 0 1 1'

        idx = i + bias + 1
        cones += cone_model_template.format(idx, idx, idx, ambient, diffuse, specular, pose)
    return sdf_template.format(cones)

def scale_track(track_coordinates, scale_factor):
    xy_coords = track_coordinates[:, :2]

    centroid = np.mean(xy_coords, axis=0)

    # Translate the track coordinates so that the centroid is at the origin
    translated_track = xy_coords - centroid

    # Scale down the translated track uniformly
    scaled_track_xy = translated_track * scale_factor

    # Translate the scaled track back to its original position
    scaled_track_xy += centroid

    scaled_track = np.hstack((scaled_track_xy, track_coordinates[:, 2:4]))

    return scaled_track

def decimate_uniform(points, factor):
    """Decimates points by keeping every 'factor'-th point."""
    return points[::factor]

def decimate_random(points, num_points):
    """Decimates points by randomly selecting a subset."""
    return points[np.random.choice(points.shape[0], num_points, replace=False)]

def main():
    innerConePosition = np.array([[6.49447171658257,41.7389113024907, 0, 1],[8.49189149682204,41.8037451937836, 0, 1],[10.4848751821667,41.8690573815958, 0, 1],[12.4735170408320,41.9319164105607, 0, 1],[14.4579005366844,41.9894100214277, 0, 1],[16.4380855350346,42.0386448286094, 0, 1],[22.3534294484539,42.1081444836209, 0, 1],[24.3165071700586,42.0957886616701, 0, 1],[26.2748937812757,42.0609961552005, 0, 1],[28.2282468521326,42.0009961057027, 0, 1],[30.1761149294924,41.9130441723441, 0, 1],[32.0795946202318,41.7896079706255, 0, 1],[33.8817199327800,41.5914171121172, 0, 1],[37.1238045770298,40.8042280456036, 0, 1],[38.5108000329817,40.1631834270328, 0, 1],[40.7498148915033,38.2980872410971, 0, 1],[41.6428012725483,37.0572740958520, 0, 1],[42.3684952713925,35.6541128117207, 0, 1],[42.9237412798850,34.1220862330776, 0, 1],[43.4562377484922,30.9418382209873, 0, 1],[43.4041825643156,29.3682424552239, 0, 1],[43.1310900802234,27.8454335309325, 0, 1],[42.6373380962399,26.4081334491868, 0, 1],[41.9213606895600,25.0723633391567, 0, 1],[39.8493389129556,22.6733478226331, 0, 1],[37.1330772214184,20.7325660900255, 0, 1],[35.6438750732877,19.9947555768891, 0, 1],[34.0970198095490,19.4366654165469, 0, 1],[32.5117013027651,19.0709696852617, 0, 1],[30.9105163807122,18.9081142458350, 0, 1],[29.3050197645280,18.9545691109581, 0, 1],[27.6851829730976,19.2045278218877, 0, 1],[24.4759113345748,20.2570787967781, 0, 1],[21.3685688158133,21.9377743574784, 0, 1],[19.8072187451783,22.9775182612717, 0, 1],[18.2040616100214,24.1054677217171, 0, 1],[16.5291821840059,25.2778069272720, 0, 1],[14.7490275765791,26.4446189166734, 0, 1],[10.7566166245341,28.5122919557571, 0, 1],[8.59035703212379,29.2671114310357, 0, 1],[6.36970146209175,29.8034933598624, 0, 1],[4.11753580708921,30.1252372241127, 0, 1],[-0.405973075502234,30.1500578730274, 0, 1],[-2.75740378439869,29.8083496207198, 0, 1],[-7.53032772904185,27.7630095130657, 0, 1],[-9.55882345130782,25.8360602858122, 0, 1],[-10.9967405848897,23.4446538263345, 0, 1],[-11.7530941810305,20.7728147412547, 0, 1],[-11.7945553145768,18.0098876247875, 0, 1],[-11.1377067999357,15.3398589997259, 0, 1],[-9.84329815385971,12.9293912425976, 0, 1],[-4.31864858110937,8.32717777382664, 0, 1],[-2.64821833398598,7.33684919790624, 0, 1],[-1.23396167898668,6.38669110355496, 0, 1],[-0.139159724307982,5.41310565569044, 0, 1],[0.583196113153409,4.42232005043196, 0, 1],[1.00846697640521,3.25999992647677, 0, 1],[1.42452204766312,-0.235409796458984, 0, 1],[1.70769766109080,-2.50157264279400, 0, 1],[2.43395748729283,-5.02746251429141, 0, 1],[5.90118769712182,-9.36241405660719, 0, 1],[8.13219227914984,-10.6723062142501, 0, 1],[10.4108490166236,-11.5249176387577, 0, 1],[14.7174578544944,-12.4162331505645, 0, 1],[16.6611999625517,-12.7135418322201, 0, 1],[18.4669199253036,-13.0527675263258, 0, 1],[20.2513584750154,-13.4902268953088, 0, 1],[22.0275043214267,-14.0208096878619, 0, 1],[23.7938485314227,-14.6351269687361, 0, 1],[29.0380553533840,-16.8864873288738, 0, 1],[30.7681622622371,-17.7392626196140, 0, 1],[32.3760783979903,-18.6039808584518, 0, 1],[33.7897740653103,-19.5166383512928, 0, 1],[34.9667330396653,-20.5090458088496, 0, 1],[35.8614855279756,-21.5808775016001, 0, 1],[36.4612858521334,-22.7451308643890, 0, 1],[36.8711477182864,-25.4557910211687, 0, 1],[36.6696611457761,-26.8930663715963, 0, 1],[35.5175477601575,-29.6867414698392, 0, 1],[34.6369025552692,-30.9011171932826, 0, 1],[33.5888282300982,-31.9233335254203, 0, 1],[32.4026659456202,-32.7184009884738, 0, 1],[29.6211021726631,-33.5886007841515, 0, 1],[27.9849204584717,-33.7170193136260, 0, 1],[26.2183096377485,-33.6848022646400, 0, 1],[24.3309596262912,-33.5465676173721, 0, 1],[22.3208062313579,-33.3726612899257, 0, 1],[18.1328018280879,-33.1964401661521, 0, 1],[14.1429922166079,-33.1731958647648, 0, 1],[12.2313503871593,-33.1266878316603, 0, 1],[10.3778348140314,-33.0132052855498, 0, 1],[8.58829435522285,-32.8040580663346, 0, 1],[6.84064584789227,-32.4725374962639, 0, 1],[5.07009944482550,-32.0172508962124, 0, 1],[3.27322533222869,-31.4640545504384, 0, 1],[-0.418687595522242,-30.1796696447230, 0, 1],[-4.09627739578414,-28.8238238024923, 0, 1],[-5.89202160786470,-28.1122858460715, 0, 1],[-7.65255868890126,-27.3645667343373, 0, 1],[-9.37355826729420,-26.5706223212060, 0, 1],[-11.0772549160090,-25.7164049091686, 0, 1],[-14.4775165017317,-23.8562440887552, 0, 1],[-16.1852335110450,-22.8738429891042, 0, 1],[-17.9066984601430,-21.8724503885825, 0, 1],[-19.6280899733090,-20.8717543910881, 0, 1],[-22.9283852622260,-18.8697018891971, 0, 1],[-24.4790807692059,-17.8277052050408, 0, 1],[-27.3051265922114,-15.5801090683244, 0, 1],[-28.5448479313762,-14.3530174024786, 0, 1],[-29.6530218737847,-13.0404842531107, 0, 1],[-30.6444406510768,-11.6234683085559, 0, 1],[-31.5169602294234,-10.1146356600596, 0, 1],[-32.2692264908853,-8.52739205631154, 0, 1],[-32.9016624434539,-6.87420998418598, 0, 1],[-34.1160057737752,-1.60803776182190, 0, 1],[-34.3261608207142,0.237322459171913, 0, 1],[-34.4624174228984,2.11880932640591, 0, 1],[-34.5407037273032,4.03273612643633, 0, 1],[-34.5779532171168,5.97700580252438, 0, 1],[-34.5920061096721,7.95066706685753, 0, 1],[-34.6203010935088,11.9628384547546, 0, 1],[-34.6463516562825,13.9656473217268, 0, 1],[-34.6751545298116,15.9616504117489, 0, 1],[-34.7230350194217,19.9334733431980, 0, 1],[-34.7332354577762,21.9093507078716, 0, 1],[-34.7284338451120,23.8784778261844, 0, 1],[-34.6466389854161,27.7320065787716, 0, 1],[-34.4887912178893,29.4532110956616, 0, 1],[-34.1674004338218,30.9833511541837, 0, 1],[-33.6523388115164,32.2835000565933, 0, 1],[-32.9540435069214,33.3001054449054, 0, 1],[-32.0153881487289,34.0792118997941, 0, 1],[-28.7867224485036,35.7027232116937, 0, 1],[-26.8737074947600,36.7067299514829, 0, 1],[-21.7623826032159,39.5958663210330, 0, 1],[-20.1418625665089,40.3549987041733, 0, 1],[-18.5286281071084,40.9596629960629, 0, 1],[-16.9269162480936,41.3805845888608, 0, 1],[-15.2947586791386,41.6060043323431, 0, 1],[-13.5312107482484,41.6777684016896, 0, 1],[-9.64289482747188,41.5853268011948, 0, 1],[-7.61112976471737,41.5421552074769, 0, 1],[-5.58318659783131,41.5226049040385, 0, 1],[-1.53976115651896,41.5427010208205, 0, 1],[0.475431094342800,41.5765527022834, 0, 1],[2.48619653317858,41.6224387797260, 0, 1],[6.49447171658257,41.7389113024907, 0, 1],[8.49189149682204,41.8037451937836, 0, 1],[10.4848751821667,41.8690573815958, 0, 1],[12.4735170408320,41.9319164105607, 0, 1],[14.4579005366844,41.9894100214277, 0, 1]])
    outerConePosition = np.array([[8.29483356036796,47.8005083348189, 0, 2],[10.2903642978411,47.8659036790991, 0, 2],[12.2903853701921,47.9291209919643, 0, 2],[14.2949817462715,47.9871977358879, 0, 2],[16.3042155724446,48.0371512121282, 0, 2],[18.3181128601480,48.0759783968909, 0, 2],[24.3872198920862,48.0953719564451, 0, 2],[26.4188343006777,48.0592693339474, 0, 2],[28.4542241392916,47.9967391176812, 0, 2],[30.4929111587893,47.9046750145358, 0, 2],[32.5715480310539,47.7694057800486, 0, 2],[34.7354354110013,47.5303707137414, 0, 2],[36.9671887094624,47.1090924863221, 0, 2],[41.4608084515852,45.3878796220444, 0, 2],[43.5486168233166,43.9466679046951, 0, 2],[46.7637769841785,40.1838709296144, 0, 2],[47.8711744070693,38.0458741563760, 0, 2],[48.6759026786991,35.8287318442088, 0, 2],[49.2095764033813,33.5308461962448, 0, 2],[49.3717906596030,28.7456240961468, 0, 2],[48.9402528124274,26.3442245678724, 0, 2],[48.1379348685719,24.0115869446911, 0, 2],[46.9718766730536,21.8331831495909, 0, 2],[45.5183908761479,19.8937545099424, 0, 2],[42.0344522843090,16.7521854290723, 0, 2],[38.0024261140352,14.4777602906678, 0, 2],[35.7974585974047,13.6826661179064, 0, 2],[33.4965697064231,13.1523520909686, 0, 2],[31.1302557069132,12.9121393769316, 0, 2],[28.7495405480103,12.9803375419597, 0, 2],[26.4275819814214,13.3378047377686, 0, 2],[24.1935407090117,13.9452300781406, 0, 2],[20.0475993937396,15.7534500265274, 0, 2],[16.3951857815830,18.0421326577611, 0, 2],[14.7344934919394,19.2103582158950, 0, 2],[13.1401972893467,20.3265665388672, 0, 2],[11.5833537070008,21.3477072094266, 0, 2],[10.0428032559345,22.2341839570762, 0, 2],[6.90006888859156,23.5101221144020, 0, 2],[5.24310276950825,23.9102111346615, 0, 2],[3.54614319085073,24.1525066527486, 0, 2],[1.82453456285617,24.2384953941222, 0, 2],[-1.49646987010121,23.9423419780574, 0, 2],[-2.88611819700968,23.5188503619890, 0, 2],[-4.87663538345929,22.0841121388762, 0, 2],[-5.48860547878733,21.0654842962416, 0, 2],[-5.81567263287249,19.9085084532591, 0, 2],[-5.83349192339180,18.6923268134878, 0, 2],[-5.53917605118359,17.4977407053060, 0, 2],[-4.95012865665813,16.4016948398736, 0, 2],[-4.05317915721677,15.4107620877673, 0, 2],[0.492121533127250,12.4494087837712, 0, 2],[2.38653784056378,11.1712478467585, 0, 2],[4.26363974073903,9.48929957533922, 0, 2],[5.87263326747036,7.25460792254726, 0, 2],[6.83628597561633,4.68706884998182, 0, 2],[7.22868549746256,2.31823546262226, 0, 2],[7.60968340642873,-1.42149659832866, 0, 2],[7.97509056184070,-2.72619237583490, 0, 2],[8.54802041473498,-3.68009075055991, 0, 2],[10.6601317831479,-5.23084300440234, 0, 2],[12.1167992046948,-5.77254995615783, 0, 2],[13.7805173778787,-6.17261534649334, 0, 2],[17.6231089179688,-6.79114948102549, 0, 2],[19.7388585053217,-7.18913620702706, 0, 2],[21.8298950982966,-7.70159820373082, 0, 2],[23.8771264994103,-8.31301696223576, 0, 2],[25.8797524901441,-9.00938215804746, 0, 2],[27.8385154732156,-9.77726113305095, 0, 2],[33.4828656272925,-12.3885256946890, 0, 2],[35.3884273243004,-13.4149776838374, 0, 2],[37.3243202944926,-14.6682383106842, 0, 2],[39.1922962154652,-16.2493960759111, 0, 2],[40.8455371260767,-18.2403341823979, 0, 2],[42.0705518955054,-20.6153105774461, 0, 2],[42.7346589897432,-23.1596769590206, 0, 2],[42.5147079384368,-28.2478460553850, 0, 2],[41.7538036771420,-30.6144579632713, 0, 2],[39.1831183440142,-34.8167170198948, 0, 2],[37.3770559671547,-36.5762176430613, 0, 2],[35.2523671945937,-37.9984770098583, 0, 2],[32.8791324240351,-38.9934826446380, 0, 2],[28.1270516052592,-39.7153356388220, 0, 2],[25.9046030197368,-39.6765956654354, 0, 2],[23.8121031317075,-39.5240911796868, 0, 2],[21.8464792201864,-39.3538830619781, 0, 2],[19.9742827992146,-39.2418187116909, 0, 2],[16.0937484438592,-39.1847191943436, 0, 2],[11.9928246424488,-39.1219447460144, 0, 2],[9.86352410414552,-38.9911216862446, 0, 2],[7.69014987529461,-38.7364552625087, 0, 2],[5.51782683234722,-38.3249002543397, 0, 2],[3.42382206323132,-37.7869797271760, 0, 2],[1.40682879137184,-37.1663842455962, 0, 2],[-0.541821138011257,-36.5027177844325, 0, 2],[-4.34015621146816,-35.1410426555394, 0, 2],[-8.16436000121084,-33.6653461038145, 0, 2],[-10.0767778404464,-32.8530238495275, 0, 2],[-11.9792230934156,-31.9752972248347, 0, 2],[-13.8428086034457,-31.0410375539532, 0, 2],[-15.6623928384561,-30.0682796038662, 0, 2],[-19.1958077261686,-28.0638760232219, 0, 2],[-20.9238240938196,-27.0586776214187, 0, 2],[-22.6524765196268,-26.0537507263292, 0, 2],[-24.4077080359509,-25.0144494209715, 0, 2],[-27.9360780875981,-22.7317004681533, 0, 2],[-29.6698538901663,-21.4381474644069, 0, 2],[-32.9453564203185,-18.4316844689044, 0, 2],[-34.4107565227371,-16.6961594315364, 0, 2],[-35.7065080013589,-14.8445665903860, 0, 2],[-36.8313109009813,-12.8998963192641, 0, 2],[-37.7878917266941,-10.8820330087871, 0, 2],[-38.5811746376266,-8.80892992160400, 0, 2],[-39.2178699842561,-6.69652639898087, 0, 2],[-40.3011807339499,-0.309611756649864, 0, 2],[-40.4533406202231,1.78890139416343, 0, 2],[-40.5382789183978,3.86217286202336, 0, 2],[-40.5775538214583,5.90777727960811, 0, 2],[-40.5919497511314,7.92466131148779, 0, 2],[-40.6014196538181,9.91275631233656, 0, 2],[-40.6457557289961,13.8810850824754, 0, 2],[-40.6745334498720,15.8753221224371, 0, 2],[-40.7017394704418,17.8763494567535, 0, 2],[-40.7332264185658,21.8989357934230, 0, 2],[-40.7282871101318,23.9204396925825, 0, 2],[-40.7033369152928,25.9485603009070, 0, 2],[-40.4291604069450,30.2970202551981, 0, 2],[-39.9260632680985,32.6679289532538, 0, 2],[-38.9665731582284,35.0689826553948, 0, 2],[-37.4022554152914,37.3266934320522, 0, 2],[-35.2924298638551,39.1052438930590, 0, 2],[-33.2056190082383,40.2549711124138, 0, 2],[-29.7935826692359,41.9483259837501, 0, 2],[-28.1179159337869,42.9113732230407, 0, 2],[-22.4882559681602,45.8771756304123, 0, 2],[-20.3655683666973,46.6715497668858, 0, 2],[-18.1093389106216,47.2629205744315, 0, 2],[-15.7909195473899,47.5854545071348, 0, 2],[-13.5681633690504,47.6776546092619, 0, 2],[-11.4644254110510,47.6457593795914, 0, 2],[-7.51988574761303,47.5414613781388, 0, 2],[-5.55737846449435,47.5225493988029, 0, 2],[-3.59058902924480,47.5236739806379, 0, 2],[0.355197826404633,47.5753479114301, 0, 2],[2.33404449770947,47.6205092826547, 0, 2],[4.31684977705784,47.6749328204622, 0, 2],[8.29483356036796,47.8005083348189, 0, 2],[10.2903642978411,47.8659036790991, 0, 2],[12.2903853701921,47.9291209919643, 0, 2],[14.2949817462715,47.9871977358879, 0, 2],[16.3042155724446,48.0371512121282, 0, 2]])

    scale_factor = 0.5
    scaled_inner = scale_track(innerConePosition, scale_factor)
    scaled_outer = scale_track(outerConePosition, scale_factor)

    scaled_inner_decimate = decimate_uniform(innerConePosition, 2)
    scaled_outer_decimate = decimate_uniform(outerConePosition, 2)

    # sdf_content = generate_sdf(scaled_inner, scaled_outer)
    sdf_content = generate_sdf(scaled_inner_decimate, scaled_outer_decimate)


    with open("track_decimate.sdf", "w") as f:
        f.write(sdf_content)

    with open("points_decimated.txt", "w") as f:
        f.write("innerConePosition = [")
        for coords in scaled_inner_decimate:
            f.write("[")
            for coord in coords:
                f.write(str(coord))
                f.write(",")
            f.write("]")
            f.write(",")
        f.write("]")

        f.write("\nouterConePosition = [")
        for coords in scaled_outer_decimate:
            f.write("[")
            for coord in coords:
                f.write(str(coord))
                f.write(",")
            f.write("]")
            f.write(",")
        f.write("]")

if __name__ == "__main__":
    main()