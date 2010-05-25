(**
   * OClosure Project - 2010
   * Test goog.ui.Zippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
*)


let _ =  
  let z1 = new Zippy.zippy "header1" "content1" in
    z1#expand();
    ignore(new AnimatedZippy.animatedzippy "header2" "content2" false);
    new AnimatedZippy.animatedzippy "header3" "content3" true
