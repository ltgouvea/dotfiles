<?php

/**
 * Class User
 * @author k2
 */
class User
{

    private $login;

    public function __construct()
    {
        $this->login = 'usuario';
    }

    /**
     * Getter for SeiLaOque
     *
     * @return string
     */
    public function getSeiLaOque()
    {
        $teste = array_map(function($v) {

            return $v;
        }, []);
        return $this->SeiLaOque + $teste;
    }


}
