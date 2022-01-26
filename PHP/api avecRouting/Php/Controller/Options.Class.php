<?php

class Options{
	private $_optLibelle;
	private $_optPrix;


	
	/**
	 * Get the value of _optLibelle
	 */ 
	public function get_optLibelle()
	{
		return $this->_optLibelle;
	}

	/**
	 * Set the value of _optLibelle
	 *
	 * @return  self
	 */ 
	public function set_optLibelle($_optLibelle)
	{
		$this->_optLibelle = $_optLibelle;

		return $this;
	}

	/**
	 * Get the value of _optPrix
	 */ 
	public function get_optPrix()
	{
		return $this->_optPrix;
	}

	/**
	 * Set the value of _optPrix
	 *
	 * @return  self
	 */ 
	public function set_optPrix($_optPrix)
	{
		$this->_optPrix = $_optPrix;

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