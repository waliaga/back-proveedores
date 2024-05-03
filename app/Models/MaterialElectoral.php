<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MaterialElectoral extends Model
{
    use HasFactory;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_material_electoral';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'users_sid', 'id_padron_proyectado', 'id_proceso', 'id_ambito_eleccion',
        'descripcion', 'status', 'created_at', 'updated_at'
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
    public function padronproyectado()
    {
        return $this->hasOne(PadronProyectado::class, 'id', 'id_padron_proyectado');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function proceso()
    {
        return $this->hasOne(Procesos::class, 'id', 'id_proceso');
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
    public function detmaterialelectoral()
    {
        return $this->hasOne(DetMaterialElectoral::class, 'id_material_electoral', 'id');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
