<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProcesoElectoral extends Model
{
    use HasFactory;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_proceso_electoral';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'users_sid', 'sigla', 'nombre', 'descripcion', 'id_ambito_eleccion',
        'id_procesos', 'fecha', 'id_estado_proceso', 'status', 'created_at', 'updated_at'
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
    public function ambitoeleccion()
    {
        return $this->hasOne(AmbitoElecciones::class, 'id', 'id_ambito_eleccion');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function procesos()
    {
        return $this->hasOne(Procesos::class, 'id', 'id_procesos');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function estadoproceso()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_estado_proceso')->where('catalog_code', 'ESTADOPROCESO')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function padronproyectado()
    {
        return $this->hasOne(PadronProyectado::class, 'id_proceso', 'id_procesos');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
