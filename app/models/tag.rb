class Tag < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'FOOD' },
    { id: 3, name: 'LOVE・ROMANCE' },
    { id: 4, name: 'SHOPPING' },
    { id: 5, name: 'HOUSE WORK' },
    { id: 6, name: 'FURNITURE・HOME APPRIANCE' },
    { id: 7, name: 'FASHON' },
    { id: 8, name: 'HOBBY' },
    { id: 9, name: 'MUSIC' },
    { id: 10, name: 'FEELING・EMOTION' },
    { id: 11, name: 'BODY' },
    { id: 12, name: 'JOB' },
    { id: 13, name: 'BUSINESS SITUATION' },
    { id: 14, name: 'SIGHTSEEING' },
    { id: 15, name: 'NATURE' },
    { id: 16, name: 'PLANT' },
    { id: 17, name: 'ANIMAL' },
    { id: 18, name: 'SCIENCE' },
    { id: 19, name: 'UNIVERSE' },
    { id: 20, name: 'DISEASE・INJURY' },
    { id: 21, name: 'CALENDER・SEASONAL EVENT' },
    { id: 22, name: 'MAMGA・COMICS' },
    { id: 23, name: 'FANTASY' },
    { id: 24, name: 'SLANG' },
    { id: 25, name: 'SELF INTRODUCTION' },
    { id: 26, name: 'OTHERS１' },
    { id: 27, name: 'OTHERS２' },
    { id: 28, name: 'OTHERS３' },
    { id: 29, name: 'OTHERS４' },
    { id: 30, name: 'OTHERS５' },
    { id: 31, name: 'OTHERS６' },
    { id: 32, name: 'OTHERS７' }
  ]


  include ActiveHash::Associations
  has_many :phrases

  end
