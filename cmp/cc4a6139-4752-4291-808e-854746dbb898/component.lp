(librepcb_component cc4a6139-4752-4291-808e-854746dbb898
 (name "ESP32-CAM")
 (description "AI thinker module based on ESP32 chip")
 (keywords "")
 (author "Rémi Peuchot")
 (version "0.1")
 (created 2024-03-04T22:54:42Z)
 (deprecated false)
 (generated_by "")
 (category e96d0dda-3100-4e68-8c33-e2a5bc80428b)
 (schematic_only false)
 (default_value "{{MPN or DEVICE or COMPONENT}}")
 (prefix "U")
 (signal 2d304c1b-1bae-41d4-b028-8e83eb75b27b (name "GPIO0") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 31074cf7-4661-431f-9836-49db2615b44f (name "GPIO16") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 305f6b09-10fe-4c69-b47c-6028af40f6da (name "GPIO4") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal e65c1d62-3583-4cab-b924-10ab8cca591c (name "GND") (role passive)
  (required true) (negated false) (clock false) (forced_net "")
 )
 (signal 5164d58f-2d97-4412-aaf9-2325c378f373 (name "GPIO12") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 227f94b3-dd78-4164-afbb-b0d9d4db0923 (name "5V_IN") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 9ca20f4e-ef94-4b00-9e54-bd0f7ba65292 (name "U0TX/GPIO1") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal c786cdaa-5426-4e7d-89a1-76c6136622e6 (name "GPIO13") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 62a0d106-f4bd-4e42-b62a-05b7b2f624eb (name "3V3_OUT") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 9bcff6cb-3d45-4725-9fd0-763bab22eace (name "GPIO15") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal c220938d-8cac-4fe4-bab5-c04176d5666c (name "3V3_IN") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal fdac536b-3232-4a3a-9d7a-fc480dd93467 (name "GPIO14") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal 6b06ad15-b415-4370-849b-33f500e45847 (name "U0RX/GPIO3") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (signal cdbbc12b-ff91-4d1b-a1fd-1e6281dc7554 (name "GPIO2") (role passive)
  (required false) (negated false) (clock false) (forced_net "")
 )
 (variant 0c462e9c-316e-479f-b630-c1a81d05172d (norm "")
  (name "default")
  (description "")
  (gate b4f71731-6b46-46af-aee5-1d8fa9ab46ac
   (symbol e1e6c737-696f-4ea2-97c0-a810fe721694)
   (position 0.0 0.0) (rotation 0.0) (required true) (suffix "")
   (pin 1df1f4e3-5dae-471f-a8e0-a37b79de2d33 (signal 2d304c1b-1bae-41d4-b028-8e83eb75b27b) (text signal))
   (pin 277842cb-257b-486e-9401-6a1d1fed40d8 (signal cdbbc12b-ff91-4d1b-a1fd-1e6281dc7554) (text signal))
   (pin 48397f78-0f2d-48cd-b175-db5208ff9b24 (signal 227f94b3-dd78-4164-afbb-b0d9d4db0923) (text signal))
   (pin 4da2c54c-c55b-4097-81a3-d3581b4e4e2f (signal c220938d-8cac-4fe4-bab5-c04176d5666c) (text signal))
   (pin 51913d20-65fc-4b2f-ac36-f342b770174e (signal 9bcff6cb-3d45-4725-9fd0-763bab22eace) (text signal))
   (pin 68e75b1a-1d32-4267-854c-8adc513521da (signal 9ca20f4e-ef94-4b00-9e54-bd0f7ba65292) (text signal))
   (pin 705541e8-27e7-460c-8c42-81be40356003 (signal 305f6b09-10fe-4c69-b47c-6028af40f6da) (text signal))
   (pin 706bb19a-4a93-4c06-bd3a-e26839e7a225 (signal c786cdaa-5426-4e7d-89a1-76c6136622e6) (text signal))
   (pin a50e6eaa-5c9f-4cb8-9c26-438975b6f7e7 (signal 6b06ad15-b415-4370-849b-33f500e45847) (text signal))
   (pin a55573d6-48c7-44cd-ab6e-61cd49a3c131 (signal 5164d58f-2d97-4412-aaf9-2325c378f373) (text signal))
   (pin a5dbbab2-3e2b-440b-85e3-10f64fbf0f57 (signal 62a0d106-f4bd-4e42-b62a-05b7b2f624eb) (text signal))
   (pin b42aea6f-9c35-417c-bbaf-3b4647dee0f2 (signal 31074cf7-4661-431f-9836-49db2615b44f) (text signal))
   (pin e7f56b90-2717-4a98-89b4-779fa2d46ca0 (signal fdac536b-3232-4a3a-9d7a-fc480dd93467) (text signal))
   (pin f489c584-cbe9-495b-8381-4259ad8c0dac (signal e65c1d62-3583-4cab-b924-10ab8cca591c) (text signal))
  )
 )
)
