<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MainValuation extends Model
{
    use HasFactory;
    protected $table = 'main_valuations';
        public $timestamps = false;

        public function setUpdatedAt($value)
        {
          return NULL;
        }


        public function setCreatedAt($value)
        {
          return NULL;
        }

    protected $fillable = [

        'uuid',
        'PAP_ID',
        'today',
        'x1a_mmiliki',
        'status',
        'gender',
        'pap_id_original',
        'mobile',
        'municipality',
        'ward',
        'mtaa_street',
        'x1b_anuani',
        'maelezo_12',
        'matumizi_13',
        'building_usage',
        'building_type',
        'nos_building',
        'nos_sec_building',
        'sec_build_size_sqm',
        'nos_multistorey',
        'multi_st_size_sqm',
        'multi_storey_value',
        'x2_maelezo_ya_jumla_ya_mali',
        'x3a_paa',
        'x3a_other_specify',
        'x3b_kuta',
        'x3b_other_specify',
        'x3c_dari',
        'x3c_other_specify',
        'x3d_madirisha',
        'x3d_other_specify',
        'x3e_milango',
        'x3e_other_specify',
        'x3f_sakafu',
        'x3f_other_specify',
        'sketch_mchoro_wa_jengo',
        'sketch_mchoro_wa_jengo_url',
        'building_area_calculations',
        'building_area',
        'x4_je_kuna_mazao',
        'x3g_vyumba',
        'idadi_ya_vyumba_makazi',
        'idadi_ya_vyumba_biashara',
        'maendelezo_mengine_100',
        'matumizi_makazi_biashara_kadirio_la_kodi_ya_jengo_101',
        'matumizi_makazi_kadirio_la_kodi_ya_jengo',
        'matumizi_biashara_kadirio_la_kodi_ya_jengo',
        'wastan_wa_kodi_kwa_mwezi',
        'crop_1',
        'no_crop_1',
        'crop_1_growth_rate',
        'Crop1_rate',
        'Crop1_Value',
        'crop_2',
        'no_crop_2',
        'crop2_growth_rate',
        '_Crop2_rate_',
        'Crop2_Value',
        'crop_3',
        'no_crop_3',
        'crop3_growth_rate',
        '_Crop3_rate_',
        'Crop3_Value',
        'crop_4',
        'no_crop_4',
        'crop_4_growth_rate',
        'Crop4_rate',
        'Crop4_Value',
        'crop_5',
        'no_crop_5',
        'crop_5_growth_rate',
        'Crop5_rate',
        'Crop5_Value',
        'crop_6',
        'no_crop_6',
        'crop_6_growth_rate',
        'Crop6_rate',
        'Crop6_Value',
        'crop_7',
        'no_crop_7',
        'crop_7growth_rate',
        'Crop7_rate',
        'Crop7_Value',
        'crop_8',
        'no_crop_8',
        'crop_8_growth_rate',
        'Crop8_rate',
        'Crop8_Value',
        'Total_Value',
        'x4b_ukubwa_wa_shamba_eneo_kadirio_sqm',
        'owner_picture_front_147',
        'owner_picture_front_148',
        'picha_ya_mmiliki_kwa_mbele_url',
        'picha_ya_mmiliki_kwa_pembeni_url',
        'reasons_for_adjustment',
        'derived_adjsted_rate',
        'adopted_price',
        'adjustments_and_workings_percent',
        'jina_la_mmiliki',
        'mobile_no',
        'saini_ya_mmiliki_158',
        'saini_ya_mmiliki_url_159',
        'main_building_value',
        'secondary_build_value',
        'Total_Building_Value',
        'accomodation_allowance',
        'transport_allowance',
        'crop_value_Final',
        'land_size_sqm',
        'land_rate_TZS',
        'land_value_166',
        'disturbance_allowance',
        'total_compensation',
        'jina_la_mmiliki_pap_name',
        'mobile_pap_phone',
        'saini_ya_mmiliki_173',
        'saini_ya_mmiliki_url_174',
        'jina_la_mthamini',
        'saini_ya_mthamini',
        'saini_ya_mthamini_url',
        'id',
        // 'created_at',
        // 'updated_at'



    ];

    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);

        $this->fillable = $this->getFillable();
    }
}
