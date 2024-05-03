<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PresupuestoMaterial extends Model
{
    use HasFactory;

    protected $connection = 'le_pgsql';
    protected $table = 'le_presupuesto_material';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'id_proveedores', 'id_material', 'costo_unitario', 'status', 'created_at', 'updated_at'
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
    public function proveedores()
    {
        return $this->hasOne(Proveedores::class, 'id', 'id_proveedores');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function materiales()
    {
        return $this->hasOne(Materiales::class, 'id', 'id_material');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
