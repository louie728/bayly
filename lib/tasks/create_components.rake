namespace :create_components do
  desc "create hat components"
  task :create, [:filename] => :environment do |task, args|

    style_array =[
        ['07','BRLLCROW'],
        ['08','8 - POINT'],
        ['09','MILITARY A/F'],
        ['10','PERSHING'],
        ['11','MODIFIED']
    ]
    style_array.each{|s|
      Style.create(
          item_no: s[0],desc: s[1]
      )
    }

    color_array = [
        ['N','MIDNIGHT NAVY'],
        ['P','P & F BLUE'],
        ['W','WHITE CAPLITE'],
        ['G','WHITE GRAINED'],
        ['B','BLACK'],
        ['M','NAVY MESH'],
        ['C','CUSTOMER SUPPLIED'],
        ['R','BROWN POLLY'],
        ['A','AIRFORCE BLUE'],
        ['D','BLACK MESH']
    ]
    color_array.each{|s|
      Color.create(
          item_no: s[0],desc: s[1]
      )
    }

    band_array = [
        ['M','BLACK MESH'],
        ['S','SAME AS TOP'],
        ['O','OPEN WEAVE'],
        ['B','BLACK BRAID'],
        ['W','WHITE BRAID'],
        ['V','VELVET']

    ]
    band_array.each{|s|
      Band.create(
          item_no: s[0],desc: s[1]
      )
    }

    visor_array =[
        ['1','PERMAGOLD (63095)'],
        ['2','9820'],
        ['3','9830'],
        ['4','9845'],
        ['5','9850'],
        ['6','(6) FLAME VISOR (6301)'],
        ['7','GOLD NYLON (6303)'],
        ['8','PERMAGOLD (6309)'],
        ['9','PERMASILVER (6307)'],
        ['F','BLACK FELT'],
        ['C','COMPANY GRADE (9820)'],
        ['G','COMPANY GRADE (9830)'],
        ['H','AIRLINE WHEAT PERMAGOLD (6297)'],
        ['I','AIRLINE OAKLEAF PERMAGOLD (6296)'],
        ['J','PERMAGOLD ADMIRAL #6318 (ARMY)'],
        ['K','PERMAGOLD CPT/COM #6310 (ARMY)']
    ]
    visor_array.each{|s|
      Visor.create(
          item_no: s[0],desc: s[1]
      )
    }

    button_array =[
        ['A','SILVER "P"'],
        ['B','GOLD "P"'],
        ['C','SILVER "FD"'],
        ['D','GOLD "FD"'],
        ['E','SILVER "S"'],
        ['F','GOLD "S"'],
        ['G','GOLD BALL'],
        ['H','SILVER BALL'],
        ['S','SPECIAL']
    ]
    button_array.each{|s|
      Button.create(
          item_no: s[0],desc: s[1]
      )
    }

    strap_array = [
        ['0','BLACK PLASTIC (8501)'],
        ['1','GOLD SNAKE (7033)'],
        ['2','SILVER SNAKE (7035)'],
        ['3','PERMAGOLD (8519)'],
        ['4','SILVER METALLIC (8525)'],
        ['5','GOLD NYLON (8526)'],
        ['6','5/8 BLACK DOUBLE POINTED (8511)'],
        ['7','SILVER NYLON (8529)'],
        ['8','GOLD FLORAL (7105)'],
        ['9','SILVER FLORAL (7109)'],
        ['C','COMPANY GRADE 5/8" DOUBLE STRAP']
    ]
    strap_array.each{|s|
      Strap.create(
          item_no: s[0],desc: s[1]
      )
    }

    special_array = [
        ['A',''],
        ['B','BAND EDGE TO MATCH CAP TOP'],
        ['C','3 EYELETS 1-1/2" APART ON CENTER'],
        ['D','WINTER BRAID BAND']
    ]

    special_array.each{|s|
      Special.create(
          item_no: s[0],desc: s[1]
      )
    }

  end
end