import React from 'react';

const Sub = ({ sub }) => {

  const { id, name, created_at } = sub
  return (
    <>
      <h3>{name}</h3>
      <p>
        Created: {created_at}, id: {id}
      </p>
      <a href="/">Back</a>
    </>
  )
}

export default Sub;