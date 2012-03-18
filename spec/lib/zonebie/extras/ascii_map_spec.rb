require "spec_helper"

describe Zonebie::Extras::AsciiMap do
  describe "#to_s" do
    it "prints a map of the world" do
      map = File.open(File.expand_path('../../../fixtures/ascii_map.png', File.dirname(__FILE__)))
      Zonebie::Extras::AsciiMap.any_instance.expects(:download_map).returns(map)

      Zonebie::Extras::AsciiMap.new('International Date Line West').to_s.should ==
%{                                                                                
                     .....   ......                                             
                    ..... ...........                       .                   
                .  . ..  ...........       .                  .                 
            .    .. ..  ...........                    .       ..               
            ..   .. .      ........                 .      .......              
   .....     .... .   ...   .......          ..      . . ...................    
............ ........  ...  ...    ..      ..... ...............................
  ...  ......... .    ..                 ..... ............................  .  
          ........... \e[0;31;49m.\e[0m.. .           ..  .....................  ......         
            ............                ........ .. ...................         
            ...........               ..   .  ..... ............... .           
               ...   .               .............. ................            
                 ...                ............. ..     ..  ...   .            
                      .....           .. ..........               . .           
                      ..........           ......                       .       
                        .......            .....  .                 .....       
                        .....               ...                   .........     
                       ....                                             ..      
                       ..                                                       
                        .                                                       
                                                                                
                         .                                                      
                        ..                    .......... ...................    
           .     .... ....          ..........................................  
       ............... .         ............................................   
    ..................       .  .............................................   
     .....................     .............................................    
     .........................................................................  
     ...........................................................................}
    end
  end
end
