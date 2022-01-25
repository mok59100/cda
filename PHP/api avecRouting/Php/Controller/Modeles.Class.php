<?php

class Modeles{
	private $_modId;
	private $_modMarId;
    private $_modNom;
    private $_modCylindree;
    private $_modPrix;
    private $_modDateDispo;
    private $_modDateAjout;
    

	/**
	 * Get the value of _modId
	 */ 
	public function get_modId()
	{
		return $this->_modId;
	}

	/**
	 * Set the value of _modId
	 *
	 * @return  self
	 */ 
	public function set_modId($_modId)
	{
		$this->_modId = $_modId;

		return $this;
	}

	/**
	 * Get the value of _modMarId
	 */ 
	public function get_modMarId()
	{
		return $this->_modMarId;
	}

	/**
	 * Set the value of _modMarId
	 *
	 * @return  self
	 */ 
	public function set_modMarId($_modMarId)
	{
		$this->_modMarId = $_modMarId;

		return $this;
	}

    /**
     * Get the value of _modNom
     */ 
    public function get_modNom()
    {
        return $this->_modNom;
    }

    /**
     * Set the value of _modNom
     *
     * @return  self
     */ 
    public function set_modNom($_modNom)
    {
        $this->_modNom = $_modNom;

        return $this;
    }

    /**
     * Get the value of _modCylindree
     */ 
    public function get_modCylindree()
    {
        return $this->_modCylindree;
    }

    /**
     * Set the value of _modCylindree
     *
     * @return  self
     */ 
    public function set_modCylindree($_modCylindree)
    {
        $this->_modCylindree = $_modCylindree;

        return $this;
    }

    /**
     * Get the value of _modPrix
     */ 
    public function get_modPrix()
    {
        return $this->_modPrix;
    }

    /**
     * Set the value of _modPrix
     *
     * @return  self
     */ 
    public function set_modPrix($_modPrix)
    {
        $this->_modPrix = $_modPrix;

        return $this;
    }
    /**
     * Get the value of _modDateDispo
     */ 
    public function get_modDateDispo()
    {
        return $this->_modDateDispo;
    }

    /**
     * Set the value of _modDateDispo
     *
     * @return  self
     */ 
    public function set_modDateDispo($_modDateDispo)
    {
        $this->_modDateDispo = $_modDateDispo;

        return $this;
    }
    /**
     * Get the value of _modDateAjout
     */ 
    public function get_modDateAjout()
    {
        return $this->_modDateAjout;
    }

    /**
     * Set the value of _modDateAjout
     *
     * @return  self
     */ 
    public function set_modDateAjout($_modDateAjout)
    {
        $this->_modDateAjout = $_modDateAjout;

        return $this;
    }



	// Constructeur
	public function __construct(array $options = [])
	{ 
		if (!empty($options))
		{
			$this->hydrate($options);
		}
	}
	public function hydrate($data)
	{
		foreach ($data as $key => $value)
		{
			$method = 'set'.ucfirst($key);
			
			if (is_callable([$this, $method]))
			{
				$this->$method($value);
			}
		}
	}

	
}
