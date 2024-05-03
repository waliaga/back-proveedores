<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Materiales extends Model
{
    use HasFactory;
    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_materiales';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'users_sid', 'id_grupo', 'id_unidad_medida', 'id_destino_material',
        'item', 'status', 'created_at', 'updated_at'
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
    public function grupo()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_grupo')->where('catalog_code', 'GRUPOS')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function unidadmedida()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_unidad_medida')->where('catalog_code', 'MEDIDA')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function destinomaterial()
    {
        return $this->hasOne(Catalogos::class, 'value', 'id_destino_material')->where('catalog_code', 'DESTINO')->where('status', 'A');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function presupuestomaterial()
    {
        return $this->hasOne(PresupuestoMaterial::class, 'id_material', 'id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function detmaterialelectoral()
    {
        return $this->hasOne(DetMaterialElectoral::class, 'id_material', 'id');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }

}
