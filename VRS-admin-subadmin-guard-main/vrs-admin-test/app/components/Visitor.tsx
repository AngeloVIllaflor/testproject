"use client";

import React from "react";
import SearchBar from "../components/Search";
import { Box, Modal } from "@mui/material";
import AccountBoxIcon from "@mui/icons-material/AccountBox";
import Table from "./Table";
import { usePathname } from "next/navigation";

interface Props {
  open: boolean;
  handleOpen: () => void;
  handleClose: () => void;
}

const Visitor: React.FC<Props> = ({ open, handleOpen, handleClose }) => {
  const style = {
    position: "absolute" as "absolute",
    top: "50%",
    left: "50%",
    transform: "translate(-50%, -50%)",
    width: 400,
    bgcolor: "background.paper",
    boxShadow: 24,
    outline: "none",
  };

  const path = usePathname();

  return (
    <>
      <div className="flex flex-col items-center h-auto bg-slate-600 bg-opacity-5">
        <h1
          onClick={handleOpen}
          className="flex justify-end text-sm cursor-pointer text-stone-800 w-full text=center items-center font-medium border-b-2 border-yellow-500 p-3 bg-white pb-4"
        >
          josecruz@apc.edu.ph
        </h1>

        <div className="flex flex-row justify-between w-full text-gray-950">
          <h1 className=" text-lg flex justify-start items-center ml-4 font-medium">
            Visitor Management
          </h1>
          <div className="flex flex-row items-center ">
            <SearchBar></SearchBar>
            {path !== "/subadmin" && (
              <div className="text-sm px-3 py-2.5 border-2  bg-white cursor-pointer mr-3">
                Download csv
              </div>
            )}
          </div>
        </div>
      </div>
      <Table />
      <Modal
        open={open}
        onClose={handleClose}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style}>
          <div className="grid grid-rows-2  w-full gap-2 pt-4 px-4 ">
            <div className="flex flex-row items-center gap-3">
              <div className="border-[0.5px]">
                <AccountBoxIcon
                  sx={{
                    fontSize: 60,
                    color: "#edebe6",
                    padding: 0,
                    zIndex: 9999,
                  }}
                />
              </div>
              <h3> josecruz@apc.edu.ph</h3>
            </div>
            <div className="flex justify-between items-center w-full ">
              <h3 className="  text-sm cursor-pointer">Switch account</h3>
              <h3 className=" bg-blue-500 hover:bg-blue-400 transition ease-in-out text-sm px-4 p-1 text-white font-semibold cursor-pointer">
                Log out
              </h3>
            </div>
          </div>
        </Box>
      </Modal>
    </>
  );
};

export default Visitor;
