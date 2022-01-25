<?php

class ModelesOptions{
	private $_onModId;
	private $_onOptId;


	/**
	 * Get the value of _onModId
	 */ 
	public function get_onModId()
	{
		return $this->_onModId;
	}

	/**
	 * Set the value of _onModId
	 *
	 * @return  self
	 */ 
	public function set_onModId($_onModId)
	{
		$this->_onModId = $_onModId;

		return $this;
	}

	/**
	 * Get the value of _onOptId
	 */ 
	public function get_onOptId()
	{
		return $this->_onOptId;
	}

	/**
	 * Set the value of _onOptId
	 *
	 * @return  self
	 */ 
	public function set_onOptId($_onOptId)
	{
		$this->_onOptId = $_onOptId;

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
