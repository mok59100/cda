<?php

class Marques{
	private $_marid;
	private $_marnom;


		/**
	 * Get the value of _marid
	 */ 
	public function get_marid()
	{
		return $this->_marid;
	}

	/**
	 * Set the value of _marid
	 *
	 * @return  self
	 */ 
	public function set_marid($_marid)
	{
		$this->_marid = $_marid;

		return $this;
	}

	/**
	 * Get the value of _marnom
	 */ 
	public function get_marnom()
	{
		return $this->_marnom;
	}

	/**
	 * Set the value of _marnom
	 *
	 * @return  self
	 */ 
	public function set_marnom($_marnom)
	{
		$this->_marnom = $_marnom;

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
