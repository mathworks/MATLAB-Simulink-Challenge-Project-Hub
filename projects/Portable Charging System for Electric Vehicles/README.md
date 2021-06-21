**Project 216:** Fill out this <strong>[form](https://forms.office.com/Pages/ResponsePage.aspx?id=ETrdmUhDaESb3eUHKx3B5lOTzSa_A6lPqq2LJKzvpM5UMTBZRkc4UTRETjFERVRDWllQRE40OUFSQS4u)</strong> to  register your intent to complete this project and learn about the reward

<table>
<td><img src="https://gist.githubusercontent.com/robertogl/e0115dc303472a9cfd52bbbc8edb7665/raw/portableEvCharger.jpg"  width=400 /></td>
<td><p><h1>Portable Charging System for Electric Vehicles</h1></p>
<p>Design a portable charger for Electric Vehicles</p>
</table>

## Motivation

Electric Vehicles are rising in popularity as the global trend towards electrification continues. However, this new and exciting technology also poses different challenges compared to conventional internal combustion engines, which will need new engineering solutions to resolve. 
One such challenge is the possibility of an electric vehicle running out of charge before it can reach a recharging station. In such a scenario, it might be easier to simply recharge the EV on-the-spot using a charged battery pack rather than putting in the much more substantial effort of towing it to another location. 
Solving this problem requires a detailed understanding of how battery packs and power electronics operate, and also of the control algorithms necessary to manage the charging process in accordance with established standards. 


## Project Description

Work with [Simscape™](https://in.mathworks.com/help/physmod/simscape/index.html) and [Simscape™ Electrical™](https://in.mathworks.com/help/physmod/sps/index.html) blocks to create a simulation model of a reference EV’s battery pack with electrical and thermal characteristics modelled. Next, devise a solution for transferring charge from an external battery through an intermediate power electronic circuit to the reference EV. Select an appropriate value of the charging rate and total power transferred, considering the trade-off against time taken and the cost of hardware needed for faster charging.

Suggested steps:
1.	Perform literature research prior to starting the work to understand the basics of EV battery packs, and charging/discharging circuits. Consider using the resources [here](https://mathworks.com/solutions/power-electronics-control/battery-models.html).
2.	Create a model of the Battery Pack within an EV, ensuring the sizing and battery chemistry is appropriate for contemporary applications. Consider using a [generic battery model]( https://in.mathworks.com/help/physmod/sps/powersys/ref/battery.html) as a starting point.
3.	Create a model of a second, external battery pack, which will be used to recharge the EV. The size and configuration of this should be parametrized, so that the cost and charging rate can be optimized.
4.	 Model the intermediate power electronic charging circuit, ensuring the electrical and thermal characteristics of the conversion are within an acceptable range. Consider using the examples provided in the Simscape Electrical library [here]( https://in.mathworks.com/help/physmod/sps/power-electronics.html). 
5.	Verify the suitability of the charging control algorithms and power electronics design through simulations.

Advanced project work:
1.	Customize the design to match various popular EV manufacturers.
2.	Use the model to compare the speed and cost of different charging technologies, battery chemistries and cell configurations.
3.	Build and test the actual hardware


## Background Material

-	[Battery Electric Vehicle Model in Simscape](https://in.mathworks.com/matlabcentral/fileexchange/82250-battery-electric-vehicle-model-in-simscape)
-	[Lithium Battery Charger Block](https://in.mathworks.com/matlabcentral/fileexchange/72570-lithium-battery-charger-block)
-	Video Series: [Developing DC-DC Converter Control with Simulink](https://in.mathworks.com/videos/series/developing-dc-dc-converter-control-with-simulink.html)
-	Example: [Buck Converter With Thermal Dynamics](https://in.mathworks.com/help/physmod/sps/ug/buck-converter-with-thermal-dynamics.html)

Suggested readings:
-	[Modern Electric, Hybrid Electric, and Fuel Cell Vehicles, 3e](https://in.mathworks.com/academia/books/modern-electric-hybrid-electric-and-fuel-cell-vehicles-ehsani.html)
-	A. Arancibia and K. Strunz, "Modeling of an electric vehicle charging station for fast DC charging," 2012 IEEE International Electric Vehicle Conference, Greenville, SC, USA, 2012, pp. 1-6, doi: 10.1109/IEVC.2012.6183232.
-	Falvo, Maria Carmen, et al. "EV charging stations and modes: International standards." 2014 International Symposium on Power Electronics, Electrical Drives, Automation and Motion. IEEE, 2014.
-	Das, H. S., et al. "Electric vehicles standards, charging infrastructure, and impact on grid integration: A technological review." Renewable and Sustainable Energy Reviews 120 (2020): 109618.
-	Atmaja, Tinton Dwi. "Energy storage system using battery and ultracapacitor on mobile charging station for electric vehicle." Energy Procedia 68 (2015): 429-437.
-	Huang, Shisheng, et al. "Design of a mobile charging service for electric vehicles in an urban environment." IEEE Transactions on Intelligent Transportation Systems 16.2 (2014): 787-798.
-	Khan, Abdul Basit, et al. "Multistage constant-current charging method for Li-Ion batteries." 2016 IEEE Transportation Electrification Conference and Expo, Asia-Pacific (ITEC Asia-Pacific). IEEE, 2016.


## Impact

Help make Electric Vehicles more reliable for general use.


## Expertise Gained 

Sustainability and Renewable Energy, Control, Electrification, Modeling and Simulation


## Project Difficulty

Bachelor, Master's

## Project Discussion

[Dedicated discussion forum](https://github.com/mathworks/MathWorks-Excellence-in-Innovation/discussions/47) to ask/answer questions, comment, or share your ideas for solutions for this project.

## Project Number

216
