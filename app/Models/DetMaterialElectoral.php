<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DetMaterialElectoral extends Model
{
    use HasFactory;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_det_material_electoral';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'users_sid', 'id_material_electoral', 'id_material', 'utilidad_material',
        'id_partida', 'id_ambito_eleccion', 'id_factor_distribucion', 'id_responsable_adquisicion',
        'margen_seguridad', 'id_tipo_material', 'cantidad_margen_seguridad', 'cantidad_total',
        'material_sensible', 'material_fungible', 'material_reutilizable', 'id_instancia_aprobacion_diseno',
        'id_instancia_aprobacion_arte', 'tiempo_produccion_adquisicion', 'id_lugar_recepcion',
        'costo_unitario', 'costo_total', 'status', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime'
    ];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function user()
    {
        return $this->hasOne(User::class, 'sid', 'users_sid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function materialelectoral()
    {
        return $this->hasOne(MaterialElectoral::class, 'id', 'id_material_electoral');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function materiales()
    {
        return $this->hasOne(Materiales::class, 'id', 'id_material');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function partida()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_partida')->where('catalog_code', 'PARTIDA')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function ambitoeleccion()
    {
        return $this->hasOne(AmbitoElecciones::class, 'id', 'id_ambito_eleccion');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function factordistribucion()
    {
        return $this->hasOne(FactorDistribucion::class, 'id', 'id_factor_distribucion');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function responsableadquisicion()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_responsable_adquisicion')->where('catalog_code', 'RESPONSABLEADQUISICION')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function tipomaterial()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_tipo_material')->where('catalog_code', 'TIPOMATERIAL')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function instanciaaprobaciondiseno()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_instancia_aprobacion_diseno')->where('catalog_code', 'INSTANCIA')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function instanciaaprobacionarte()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_instancia_aprobacion_arte')->where('catalog_code', 'INSTANCIA')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function lugarrecepcion()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_lugar_recepcion')->where('catalog_code', 'LUGARRECEPCION')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function caracteristicastecnicas()
    {
        return $this->hasOne(CaracteristicasTecnicas::class, 'id_det_material_electoral', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function caracteristicastecnicascompuestas()
    {
        return $this->hasOne(CaracteristicasTecnicasCompuestas::class, 'id_det_material_electoral', 'id');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
