import React from 'react';

const SubNew = ({ sub }) => {

  // attr that your obj 
  const { name } = sub 
  // in case there are error it saves the user input
  // one per attr
  const defaultName = name ? name : ""
  return (
    <>
      <h1>Create new Sub</h1>
      <form action="/subs" method="post">
        <input
          type="text"
          placeholder="Sub name"
          required
          // these next ones are a must
          defaultValue={defaultName}
          name="sub[name]"
        />
        <button type="submit">Add Sub</button>
      </form>
      <a href="/subs">Back to Subs</a>
    </>
  )
}

export default SubNew;