"use client";

import React from "react";
import Image from "next/image";
import TextField from "@mui/material/TextField";
import PersonIcon from "@mui/icons-material/Person";
import LockIcon from "@mui/icons-material/Lock";
import InputAdornment from "@mui/material/InputAdornment";
import { useRouter } from "next/navigation";

const Portal = () => {
  const route = useRouter();
  return (
    <div className="flex justify-center items-center w-full bg-blue-900 h-[100vh]">
      <div className="h-auto w-full mx-4  md:w-[50%] lg:w-[40%] xl:w-[30%] bg-stone-50 border-[0.5px] md:mx-auto rounded p-4 sm:p-8">
        <figure className="flex justify-center mb-4">
          <div className="relative h-[80px] w-[80px]">
            <Image src="/image.png" fill alt="APC" className="object-contain" />
          </div>
        </figure>
        <div className="flex flex-col gap-3 cursor-default">
          <h1 className="text-4xl font-medium text-stone-700 text-center">
            Login
          </h1>
          <p className="text-xs text-center text-stone-600">
            Sign in to continue
          </p>
        </div>
        <div className="flex flex-col  gap-4 mt-10 w-full">
          <TextField
            id="outlined-email"
            label="Email"
            variant="outlined"
            className="w-full"
            size="medium"
            InputProps={{
              endAdornment: (
                <InputAdornment position="end">
                  <PersonIcon />
                </InputAdornment>
              ),
            }}
          />
          <TextField
            id="outlined-basic"
            label="Password"
            variant="outlined"
            className="w-full"
            size="medium"
            InputProps={{
              endAdornment: (
                <InputAdornment position="end">
                  <LockIcon />
                </InputAdornment>
              ),
            }}
          />
        </div>
        <div className="text-xs text-blue-500 mt-3 ml-0.5">
          <span className="hover:underline cursor-pointer">
            Forgot password?
          </span>{" "}
          <span className="hover:underline cursor-pointer">Create one.</span>
        </div>
        <div
          onClick={() => route.push("/dashboard")}
          className="px-12 py-3 bg-yellow-600 bg-opacity-90 rounded cursor-pointer text-center sm:hover:bg-opacity-80 transition ease-in-out text-white font-semibold text-lg mt-10"
        >
          Sign in
        </div>
      </div>
    </div>
  );
};

export default Portal;
