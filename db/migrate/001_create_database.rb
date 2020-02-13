class CreateDatabase < ActiveRecord::Migration[5.2]
  def self.up

  create_table "items", id: false, primary_key: "ROD_CISLO", force: :cascade do |t|
#  create_table "items", force: :cascade do |t|
    t.string "TITUL",      limit: 20
    t.string "JMENO",      limit: 100
    t.string "PRIJMENI",   limit: 100
    t.string "ROD_PRIJM",  limit: 100
    t.string "POHL",       limit: 1
    t.string "ROD_CISLO",  limit: 10
    t.string "DAT_NAR",    limit: 10
    t.string "MISTO_NAR",  limit: 100
    t.string "OKR_NAR",    limit: 100
    t.string "STAV",       limit: 10
    t.string "NAROD",      limit: 100
    t.string "BYDL",       limit: 100
    t.string "PSC",        limit: 10
    t.string "TEL",        limit: 15
    t.string "POVOLANI",   limit: 100
    t.string "ZAMESTEL",   limit: 100
    t.string "VZDELANI",   limit: 100
    t.string "TRIDA",      limit: 10
    t.string "NABOZENST",  limit: 100
    t.string "NAB_VYUC",   limit: 100
    t.string "NAB_CHODI",  limit: 100
    t.string "DEN_JMEN",   limit: 10
    t.string "MES_JMEN",   limit: 10
    t.string "TIT_OT",     limit: 20
    t.string "JM_OTC",     limit: 100
    t.string "PRIJM_OTC",  limit: 100
    t.string "DAT_NR_OTC", limit: 10
    t.string "TIT_MAT",    limit: 20
    t.string "JM_MAT",     limit: 100
    t.string "ROD_PR_MAT", limit: 100
    t.string "DAT_NR_MAT", limit: 10
    t.string "KREST",      limit: 1
    t.string "DAT_KRTU",   limit: 10
    t.string "MST_KRTU",   limit: 100
    t.string "PRIJIMANI",  limit: 1
    t.string "DAT_PRIJ",   limit: 10
    t.string "MST_PRIJ",   limit: 100
    t.string "BIRM",       limit: 1
    t.string "DAT_BIRM",   limit: 10
    t.string "MST_BIRM",   limit: 100
    t.string "MANZ",       limit: 1
    t.string "DAT_MANZ",   limit: 10
    t.string "MST_MANZ",   limit: 100
    t.string "POMA",       limit: 1
    t.string "DAT_POMA",   limit: 10
    t.string "MST_POMA",   limit: 100
    t.string "KNEZSTVI",   limit: 1
    t.string "DAT_KNEZ",   limit: 10
    t.string "MST_KNEZ",   limit: 100
    t.string "NEMOC",      limit: 10
    t.string "FAR_RADA",   limit: 100
    t.string "KONICEK",    limit: 100
    t.string "POTR_POM",   limit: 100
    t.string "SPOLEC",     limit: 100
    t.string "POM_FAR",    limit: 100
    t.string "POZNAMKA",   limit: 100
    t.string "NAB_VZ_SPC", limit: 100
    t.string "TITL_MNZ",   limit: 20
    t.string "JM_MNZ",     limit: 100
    t.string "PRIJM_MNZ",  limit: 100
    t.string "NAROD_MNZ",  limit: 100
    t.string "VYZN_MNZ",   limit: 100
    t.string "ROD_PR_MNZ", limit: 100
    t.string "ROD_C_MNZ",  limit: 10
    t.string "DAT_NR_MNZ", limit: 10
    t.string "MST_NR_MNZ", limit: 100
    t.string "OKR_NR_MNZ", limit: 100
    t.string "JM_OT_MNZ",  limit: 100
    t.string "PR_OT_MNZ",  limit: 100
    t.string "RPR_MA_MNZ", limit: 100
    t.string "JM_MA_MNZ",  limit: 100
    t.string "DAT_SN_CIV", limit: 10
    t.string "MST_SN_CIV", limit: 100
    t.integer "POCET_DETI"
    t.string "KLIC",       limit: 100
    t.string "FARNOST",    limit: 100
  end

  end

  def self.down
    drop_table "items"
  end
end
