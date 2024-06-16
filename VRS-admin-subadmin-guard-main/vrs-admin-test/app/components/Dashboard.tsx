import React from "react";
import Image from "next/image";
import SearchBar from "../components/Search";
import { Box, Modal } from "@mui/material";
import AccountBoxIcon from "@mui/icons-material/AccountBox";

interface Props {
  open: boolean;
  handleOpen: () => void;
  handleClose: () => void;
}

const Dashboard: React.FC<Props> = ({ open, handleOpen, handleClose }) => {
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
          <h1 className="w-[80%]  text-lg flex justify-start items-center ml-4 font-medium">
            Executive Dashboard
          </h1>
          <SearchBar></SearchBar>
        </div>
      </div>
      <div className="flex flex-col gap-4 w-full p-3">
        <div className="grid grid-cols-4 gap-3">
          <section className="bg-blue-900 rounded text-stone-50 flex flex-col flex-shrink-0 p-4 gap-3 justify-center items-center border">
            <h3 className="flex w-full justify-center items-center border-b pb-3">
              Total Today Visitors
            </h3>
            <h4 className="text-3xl font-semibold">4</h4>
          </section>
          <section className="bg-blue-900 rounded text-stone-50 flex flex-col flex-shrink-0 p-4 gap-3 justify-center items-center border">
            <h3 className="flex w-full justify-center items-center border-b pb-3">
              Active Visitors
            </h3>
            <h4 className="text-3xl font-semibold">4</h4>
          </section>
          <section className="bg-blue-900 rounded text-stone-50 flex flex-col flex-shrink-0 p-4 gap-3 justify-center items-center border">
            <h3 className="flex w-full justify-center items-center border-b pb-3">
              Cleared Visitors
            </h3>
            <h4 className="text-3xl font-semibold">1</h4>
          </section>
          <section className="bg-blue-900 rounded text-stone-50 flex flex-col flex-shrink-0 p-4 gap-3 justify-center items-center border">
            <h3 className="flex w-full justify-center items-center border-b pb-3">
              Last 7 Days Visitors
            </h3>
            <h4 className="text-3xl font-semibold">10</h4>
          </section>
        </div>
        <div className="grid grid-cols-2 gap-12 mt-20 h-full w-full">
          <section className="relative w-full">
            <div className="relative mt-12 h-[380px] w-auto">
              <Image
                src={"/barChart.jpeg"}
                alt="Bar chart demo"
                fill
                className="object-contain fle flex-shrink-0"
              />
              <div className="absolute font-semibold top-[-50px]">
                Monthly Visitors Chart
              </div>
            </div>
          </section>
          <section className="relative w-full">
            <div className="relative h-[400px] w-auto">
              <Image
                src={"/pieChart.jpeg"}
                alt="Bar chart demo"
                quality={100}
                fill
                className="object-contain fle flex-shrink-0"
              />
            </div>
            <div className="absolute font-semibold top-0">
              Most Visited Department
            </div>
          </section>
        </div>
      </div>
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

export default Dashboard;
