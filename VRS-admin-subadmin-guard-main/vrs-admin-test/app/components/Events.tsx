import React, { useState } from "react";
import SearchBar from "../components/Search";
import { Box, Modal } from "@mui/material";
import AccountBoxIcon from "@mui/icons-material/AccountBox";
import { DataGrid, GridColDef, GridRowSelectionModel } from "@mui/x-data-grid";

interface Props {
  open: boolean;
  handleOpen: () => void;
  handleClose: () => void;
}

const Events: React.FC<Props> = ({ open, handleOpen, handleClose }) => {
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

  const columns: GridColDef[] = [
    { field: "id", headerName: "ID", width: 90 },
    { field: "name", headerName: "Student Name", width: 200 },
    { field: "status", headerName: "Status", width: 150 },
  ];

  return (
    <>
      <div className="flex flex-col items-center h-auto bg-slate-600 bg-opacity-5">
        <h1
          onClick={handleOpen}
          className="flex justify-end text-sm cursor-pointer text-stone-800 w-full text=center items-center font-medium border-b-2 border-yellow-500 p-3 bg-white pb-4"
        >
          josecruz@apc.edu.ph
        </h1>

        <div className="flex flex-row justify-between items-center w-full text-gray-950">
          <h1 className="w-[60%] text-lg flex justify-start items-center ml-4 font-medium">
            Event Log
          </h1>
          <div className="cursor-pointer bg-white px-3 p-1 rounded border">Add event</div> <SearchBar></SearchBar>
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
      <Modal
        open={open}
        onClose={handleClose}
        aria-labelledby="modal-modal-title"
        aria-describedby="modal-modal-description"
      >
        <Box sx={style}>
          <div className="grid grid-rows-2 w-full gap-2 pt-4 px-4">
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
              <h3>josecruz@apc.edu.ph</h3>
            </div>
            <div className="flex justify-between items-center w-full">
              <h3 className="text-sm cursor-pointer">Switch account</h3>
              <h3 className="bg-blue-500 hover:bg-blue-400 transition ease-in-out text-sm px-4 p-1 text-white font-semibold cursor-pointer">
                Log out
              </h3>
            </div>
          </div>
        </Box>
      </Modal>
    </>
  );
};

export default Events;
