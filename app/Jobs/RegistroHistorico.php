<?php

namespace App\Jobs;

use App\Models\History;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\DB;

class RegistroHistorico implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $model;
    private $data;
    private $id;
    private $kind;
    private $sid;

    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($model, $data, $id, $kind, $sid)
    {
        $this->model = $model;
        $this->data = $data;
        $this->id = $id;
        $this->kind = $kind;
        $this->sid = $sid;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        $historyDataTable = new History();
        DB::connection('le_pgsql')
            ->table($historyDataTable->getTableName())
            ->insert(
                [
                    'users_sid'     =>  $this->sid,
                    'model'         =>  $this->model,
                    'data'          =>  $this->data,
                    'id_data'       =>  $this->id,
                    'kind'          =>  $this->kind,
                    'status'        =>  'A',
                    'created_at'    =>  date("Y-m-d H:i:s"),
                    'updated_at'    =>  null
                ]
            );
    }
}
