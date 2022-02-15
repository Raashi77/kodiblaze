// hooks
import useAuth from '../hooks/useAuth';
// utils
import createAvatar from '../utils/createAvatar';
//
import Avatar from './Avatar';
import {baseUrl, imageBaseUrl} from  '../config'
import { useEffect, useState } from 'react';
// ----------------------------------------------------------------------

export default function MyAvatar({ ...other }) {
  const { user } = useAuth();
   

   const [avatar,setAvatar]= useState(null)

  useEffect(() => {
    if(user?.profileImage)
    {
        if(user.profileImage.includes('https://')||user.profileImage.includes('http://'))
        {
          setAvatar(user.profileImage)
        }else
        {
          setAvatar(`${imageBaseUrl}/${user.profileImage}`)
        }
    }
  },[user])

  return (
    <Avatar
      src={avatar}
      alt={user?.name}
      color={user?.profileImage ? 'default' : createAvatar(user?.name).color}
      {...other}
    >
      {createAvatar(user?.name).name}
    </Avatar>
  );
}
