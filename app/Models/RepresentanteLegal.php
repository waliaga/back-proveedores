<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RepresentanteLegal extends Model
{
    use HasFactory;

    /*
     * Initial variables for the database name
     */
    protected $connection = 'le_pgsql';
    protected $table = 'le_representante_legal';
    protected $primaryKey = 'id';
    public $timestamps = true;
    public $incrementing = true;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'id', 'id_proveedores', 'nombre_completo', 'telefono_representante',
        'email_representante', 'status', 'created_at', 'updated_at'
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
     * @return string
     */
    public function getTableName()
    {
        return $this->table;
    }
}
