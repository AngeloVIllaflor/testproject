"use client";

import React, { useState } from "react";
import Image from "next/image";
import { useRouter } from "next/navigation";
import LogoutIcon from "@mui/icons-material/Logout";
import GuardDashBoardTable from "../components/GuardDashboardTable";
import { Box, Modal } from "@mui/material";
import AccountBoxIcon from "@mui/icons-material/AccountBox";
import SearchBar from "../components/Search";
import { DataGrid, GridColDef, GridRowSelectionModel } from "@mui/x-data-grid";

const Guard = () => {
  const route = useRouter();
  const [view, setView] = React.useState("visitor");
  const [open, setOpen] = React.useState(false);
  const handleOpen = () => setOpen(true);
  const handleClose = () => setOpen(false);

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

  const [selectionModelEvent1, setSelectionModelEvent1] =
    useState<GridRowSelectionModel>([]);
  const [selectionModelEvent2, setSelectionModelEvent2] =
    useState<GridRowSelectionModel>([]);
  const [selectionModelEvent3, setSelectionModelEvent3] =
    useState<GridRowSelectionModel>([]);
  const [selectionModelEvent4, setSelectionModelEvent4] =
    useState<GridRowSelectionModel>([]);

  const initialRows = [
    { id: 1, name: "John Doe", status: "Pending" },
    { id: 2, name: "Jane Smith", status: "Pending" },
    { id: 3, name: "Jack Johnson", status: "Pending" },
    { id: 4, name: "Jill Jackson", status: "Pending" },
    { id: 5, name: "Jerry James", status: "Pending" },
  ];

  const [rowsEvent1, setRowsEvent1] = useState(initialRows);
  const [rowsEvent2, setRowsEvent2] = useState(initialRows);
  const [rowsEvent3, setRowsEvent3] = useState(initialRows);
  const [rowsEvent4, setRowsEvent4] = useState(initialRows);

  const handleSelectionChange = (
    event: number,
    newSelection: GridRowSelectionModel
  ) => {
    const updateRows = (rows: any[]) =>
      rows.map((row) => ({
        ...row,
        status: newSelection.includes(row.id) ? "Confirmed" : "Pending",
      }));

    if (event === 1) {
      setRowsEvent1(updateRows(rowsEvent1));
      setSelectionModelEvent1(newSelection);
    } else if (event === 2) {
      setRowsEvent2(updateRows(rowsEvent2));
      setSelectionModelEvent2(newSelection);
    } else if (event === 3) {
      setRowsEvent3(updateRows(rowsEvent3));
      setSelectionModelEvent3(newSelection);
    } else if (event === 4) {
      setRowsEvent4(updateRows(rowsEvent4));
      setSelectionModelEvent4(newSelection);
    }
  };

  const columns: GridColDef[] = [
    { field: "id", headerName: "ID", width: 90 },
    { field: "name", headerName: "Student Name", width: 200 },
    { field: "status", headerName: "Status", width: 150 },
  ];

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
          {view === "visitor" && (
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
                    Visitor Log
                  </h1>
                  <SearchBar></SearchBar>
                </div>
              </div>
              <GuardDashBoardTable />
            </>
          )}

          {view === "events" && (
            <>
              <div className="flex flex-col items-center h-auto bg-slate-600 bg-opacity-5">
                <h1
                  onClick={handleOpen}
                  className="flex justify-end text-sm cursor-pointer text-stone-800 w-full text=center items-center font-medium border-b-2 border-yellow-500 p-3 bg-white pb-4"
                >
                  josecruz@apc.edu.ph
                </h1>

                <div className="flex flex-row justify-between items-center w-full text-gray-950">
                  <h1 className="w-[80%] text-lg flex justify-start items-center ml-4 font-medium">
                    Event Log
                  </h1>
                  <SearchBar></SearchBar>
                </div>
              </div>
              <div className="grid grid-cols-2 gap-6 p-3 h-auto">
                <div>
                  <section className="bg-stone-100">
                    <h2 className="p-4 bg-blue-800 text-white font-semibold">
                      [Name of event 1]
                    </h2>
                    <div>
                      <DataGrid
                        rows={rowsEvent1}
                        columns={columns}
                        checkboxSelection
                        onRowSelectionModelChange={(newSelection) =>
                          handleSelectionChange(1, newSelection)
                        }
                        rowSelectionModel={selectionModelEvent1}
                        autoHeight
                      />
                    </div>
                  </section>
                </div>
                <div>
                  <section className="bg-stone-100">
                    <h2 className="p-4 bg-blue-800 text-white font-semibold">
                      [Name of event 2]
                    </h2>
                    <div>
                      <DataGrid
                        rows={rowsEvent2}
                        columns={columns}
                        checkboxSelection
                        onRowSelectionModelChange={(newSelection) =>
                          handleSelectionChange(2, newSelection)
                        }
                        rowSelectionModel={selectionModelEvent2}
                        autoHeight
                      />
                    </div>
                  </section>
                </div>
                <div>
                  <section className="bg-stone-100">
                    <h2 className="p-4 bg-blue-800 text-white font-semibold">
                      [Name of event 3]
                    </h2>
                    <div>
                      <DataGrid
                        rows={rowsEvent3}
                        columns={columns}
                        checkboxSelection
                        onRowSelectionModelChange={(newSelection) =>
                          handleSelectionChange(3, newSelection)
                        }
                        rowSelectionModel={selectionModelEvent3}
                        autoHeight
                      />
                    </div>
                  </section>
                </div>
                <div>
                  <section className="bg-stone-100">
                    <h2 className="p-4 bg-blue-800 text-white font-semibold">
                      [Name of event 4]
                    </h2>
                    <div>
                      <DataGrid
                        rows={rowsEvent4}
                        columns={columns}
                        checkboxSelection
                        onRowSelectionModelChange={(newSelection) =>
                          handleSelectionChange(4, newSelection)
                        }
                        rowSelectionModel={selectionModelEvent4}
                        autoHeight
                      />
                    </div>
                  </section>
                </div>
              </div>
            </>
          )}
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

export default Guard;
