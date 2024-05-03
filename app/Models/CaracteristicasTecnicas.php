<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CaracteristicasTecnicas extends Model
{
    use HasFactory;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_caracteristicas_tecnicas';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'users_sid', 'id_det_material_electoral', 'caracteristicas',
        'valor', 'unidad', 'cantidad_proyectada', 'status', 'created_at', 'updated_at'
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
    public function detmaterialelectoral()
    {
        return $this->hasOne(DetMaterialElectoral::class, 'id', 'id_det_material_electoral');
    }

    /**
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
