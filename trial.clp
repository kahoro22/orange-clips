(deftemplate orange-plant
        (slot leaves(type NUMBER))
        (slot fruits(type NUMBER))
        (slot branches(type NUMBER))
        (slot tree(type NUMBER))
)

;first menu display

(defrule menu1
    =>
    (printout t "Enter 1(Yes) or 2(No) to respond below:" crlf)
    (printout t "Are leaves affected?" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))
    (printout t " " crlf)

    (printout t "Are fruits affected?" crlf)
    (printout t "Choice: ")
    (bind ?fruits (read))
    (assert (fruits ?fruits))
    (printout t " " crlf)

    (printout t "Are branches affected?" crlf)
    (printout t "Choice: ")
    (bind ?branches (read))
    (assert (branches ?branches))
    (printout t " " crlf)

    (printout t "Is the whole tree affected?" crlf)
    (printout t "Choice: ")
    (bind ?tree (read))
    (assert (tree ?tree))
    (printout t " " crlf)
)

(defrule leaves_diseases
    (leaves 1)
    =>
    ;citrus_greening
    (printout t "Leaves turning yellow? ")
    (printout t "Enter 11 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    (printout t "Leaves turning blotchy? ")
    (printout t "Enter 12 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    ;citrus_canker
    (printout t "Scabby lesions on leaf? ")
    (printout t "Enter 21 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    ;citrus_rust
    (printout t "Yellow spots on leaf that are turning brown? ")
    (printout t "Enter 31 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    ;citrus_tristeza
    (printout t "Leaves turning yellow? ")
    (printout t "Enter 41 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))

    ;scooty_mold
    (printout t "Black powdery mold on leaves? ")
    (printout t "Enter 51 if you observed this and 0 if not" crlf)
    (printout t "Choice: ")
    (bind ?leaves (read))
    (assert (leaves ?leaves))
)
(defrule  fruits_diseases
    (fruits 1)
    =>
    ;citrus_greening
    (printout t "Misshapen fruits? ")
    (printout t "Enter 11 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?fruits (read))
    (assert (fruits ?fruits))

    ;citrus_canker
    (printout t "Scabby lesions fruits? ")
    (printout t "Enter 21 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?fruits (read))
    (assert (fruits ?fruits))

    ;sooty_mold
    (printout t "Black powdery mold on fruits? ")
    (printout t "Enter 31 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?fruits (read))
    (assert (fruits ?fruits))
)
(defrule branches_diseases
    (branches 1)
    =>
    ;citrus_canker
    (printout t "Scabby lesions on branches? ")
    (printout t "Enter 11 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?branches (read))
    (assert (branches ?branches))

    ;citrus_tristeza
    (printout t "Dieback branches? ")
    (printout t "Enter 21 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?branches (read))
    (assert (branches ?branches))
)
(defrule tree_diseases
    (tree 1)
    =>
    ;citrus_greening
    (printout t "Stunted growth on tree? ")
    (printout t "Enter 11 if you observed this and 0 if not" crlf)
    (printout t "choice: ")
    (bind ?tree (read))
    (assert (tree ?tree))
)
(defrule citrus-greening
    (tree 11)
    (fruits 11)
    (leaves 11)
    (leaves 12)
    =>
    (printout t "
    
    CITRUS GREENING

Cause: Huanglongbing (HLB), also known as citrus greening, is a bacterial disease that is transmitted by the Asian citrus psyllid (ACP). The disease can be devastating to orange plants, causing them to produce smaller, less flavorful fruit, and eventually killing them.
Symptoms: The first signs of citrus greening are often yellowing and blotching of the leaves. As the disease progresses, the leaves may become stunted and deformed, and the fruit may become smaller and bitter.
Effects: Citrus greening can have a significant impact on the orange industry. In Florida, for example, the disease has caused billions of dollars in losses.
Cure: There is no cure for citrus greening. However, there are treatments that can help to slow the progression of the disease and prolong the life of the tree. These treatments include applying copper fungicides to the foliage and using biological controls to reduce the population of ACPs.

    "crlf)
)
(defrule citrus-canker
    (leaves 21)
    (fruits 21)
    (branches 11)
    =>
    (printout t "

    CITRUS CANKER

Cause: Citrus canker is a bacterial disease that is caused by the bacterium Xanthomonas citri subsp. citri. The disease can be spread by rain, wind, and insects.
Symptoms: The first signs of citrus canker are often small, raised lesions on the leaves, fruit, and stems of the orange tree. As the disease progresses, the lesions may grow larger and become surrounded by a yellow halo.
Effects: Citrus canker can cause significant damage to orange trees. The disease can reduce fruit production and quality, and it can eventually kill the tree.
Cure: There is no cure for citrus canker. However, there are treatments that can help to prevent the spread of the disease and protect the tree from further damage. These treatments include removing infected leaves and fruit, and applying copper fungicides to the foliage.
    
    " crlf)
)
(defrule citrus-rust
    (leaves 31)
    =>
    (printout t "

    CITRUS RUST
     
     Cause:  A fungal disease that is caused by the fungus Colletotrichum citri. The disease is most common in tropical and subtropical regions and is spread by rain, wind, and insects. The fungus can also be spread through contaminated pruning tools and equipment.

Symptoms: The first signs of citrus rust are often small, brown spots on the leaves of the orange tree. As the disease progresses, the spots may grow larger and turn yellow or orange. The leaves may also become distorted and fall off. The fruit of the orange tree may also be affected, developing brown spots and becoming deformed.

Effects: Citrus rust can have a significant impact on orange trees. The disease can reduce fruit production and quality, and it can eventually kill the tree.

Cure: There is no cure for citrus rust. However, there are measures that can be taken to prevent the disease, such as planting trees in well-drained soil and avoiding overwatering. Fungicides can also be used to control the disease.

    " 
    crlf)
)
(defrule citrus-tristeza
    (leaves 41)
    (branches 21)
    =>
    (printout t "

     CITRUS TRISTEZA

Cause: Tristeza is a viral disease that is spread by the brown citrus aphid. The disease can be devastating to orange trees, causing them to decline and eventually die.
Symptoms: The first signs of tristeza are often yellowing and stunting of the leaves. As the disease progresses, the leaves may become distorted and fall off. The fruit may also be affected, becoming smaller and less flavorful.
Effects: Tristeza has had a significant impact on the orange industry worldwide. The disease has caused billions of dollars in losses to growers.
Cure: There is no cure for tristeza. However, there are varieties of orange trees that are resistant to the disease.

    
    " crlf)
)
(defrule sooty-mold
    (leaves 51)
    (fruits 31)
    =>
    (printout t "

    SOOTY MOLD

Cause: Sooty mold is a fungal disease that is caused by a variety of fungi. The disease is often found on plants that are infested with scale insects or mealybugs.
Symptoms: Sooty mold appears as a black, powdery coating on the leaves, fruit, and stems of the orange tree. The disease can block sunlight from reaching the leaves, which can reduce fruit production and quality.
Effects: Sooty mold can weaken orange trees and make them more susceptible to other diseases. The disease can also reduce


    " crlf)
)

