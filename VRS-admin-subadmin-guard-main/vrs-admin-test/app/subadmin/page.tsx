"use client";

import React from "react";
import Image from "next/image";
import { useRouter } from "next/navigation";
import LogoutIcon from "@mui/icons-material/Logout";
import Dashboard from "../components/Dashboard";
import User from "../components/User";
import Visitor from "../components/Visitor";
import Events from "../components/Events";

const Backlog = () => {
  const route = useRouter();
  const [view, setView] = React.useState("dashboard");
  const [open, setOpen] = React.useState(false);
  const handleOpen = () => setOpen(true);
  const handleClose = () => setOpen(false);

  return (
    <>
      <div className="grid grid-cols-8 h-[100svh] w-full max-w-screen-">
        <div className="col-span-1 flex flex-col justify-between pt-4 border-[0.5px] bg-blue-900 ">
          <div>
            <section
              onClick={() => route.push("/")}
              className="flex justify-center space-x-1 w-full pb-3 border-slate-800 cursor-pointer"
            >
              <div className="relative h-[50px] w-[50px] ml-5">
                <Image
                  src="/image.png"
                  layout="fill"
                  alt="APC"
                  className="object-contain"
                />
              </div>
              <h2 className="font-medium text-yellow-500">
                Asia Pacific College
              </h2>
            </section>
            <section
              onClick={() => setView("dashboard")}
              className="flex gap-2 justify-start items-center  px-8 hover:bg-blue-800  border-b-[0.5px] pt-3 border-blue-800 pb-3 cursor-pointer group"
            >
              <div className="text-stone-200 font-medium text-sm text-center">
                Dashboard
              </div>
            </section>
            <section
              onClick={() => setView("visitor")}
              className="flex gap-2 justify-start items-center  px-8 hover:bg-blue-800 border-y-[0.5px] pt-3 border-blue-800 pb-3 cursor-pointer group"
            >
              <div className="text-stone-200 font-medium text-sm text-center">
                Visitor
              </div>
            </section>
            <section
              onClick={() => setView("events")}
              className="flex gap-2 justify-start items-center  px-8 hover:bg-blue-800  border-b-[0.5px] pt-3 border-blue-800 pb-3 cursor-pointer group"
            >
              <div className="text-stone-200 font-medium text-sm text-center">
                Events
              </div>
            </section>
          </div>
          <div>
            <section
              onClick={() => route.push("/")}
              className="hidden  gap-2 justify-center items-center border-t-[0.5px] pt-3 border-blue-800 bg-stone-700 pb-3 cursor-pointer group"
            >
              <LogoutIcon className="group-hover:p-0.5 transition-all ease-in-out text-white" />
              <div className="text-stone-200 font-medium text-center text-sm">
                Log out
              </div>
            </section>
          </div>
        </div>
        <div className="col-span-7 h-[100vh] overflow-y-scroll">
          {view === "dashboard" && (
            <Dashboard
              open={open}
              handleOpen={handleOpen}
              handleClose={handleClose}
            />
          )}
          {view === "user" && (
            <User
              open={open}
              handleOpen={handleOpen}
              handleClose={handleClose}
            />
          )}
          {view === "visitor" && (
            <Visitor
              open={open}
              handleOpen={handleOpen}
              handleClose={handleClose}
            />
          )}
          {view === "events" && (
            <Events
              open={open}
              handleOpen={handleOpen}
              handleClose={handleClose}
            />
          )}
        </div>
      </div>
    </>
  );
};

export default Backlog;
