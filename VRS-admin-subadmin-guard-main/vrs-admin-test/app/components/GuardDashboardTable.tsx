import * as React from "react";
import { DataGrid, GridColDef } from "@mui/x-data-grid";
import Button from "@mui/material/Button";
import Snackbar from "@mui/material/Snackbar";
import Alert from "@mui/material/Alert";

const initialRows = [
  {
    id: 1,
    name: "Juan Bonifacio",
    department: "FINANCE",
    purpose: "Pay Tuiton",
    date: "05-15-2024",
    timeIn: "10:00 AM",
    timeOut: "11:00 AM",
    status: "",
  },
  {
    id: 2,
    name: "Emilia Aguinaldo",
    department: "ADMISSION",
    purpose: "Inquire",
    date: "05-15-2024",
    timeIn: "11:30 AM",
    timeOut: "12:00 PM",
    status: "",
  },
  {
    id: 3,
    name: "Justin Romero",
    department: "GUIDANCE",
    purpose: "Counseling",
    date: "05-15-2024",
    timeIn: "01:00 PM",
    timeOut: "02:00 PM",
    status: "",
  },
  {
    id: 4,
    name: "Anna Baltar",
    department: "FINANCE",
    purpose: "Pay Documents",
    date: "05-15-2024",
    timeIn: "02:30 PM",
    timeOut: "03:30 PM",
    status: "",
  },
  {
    id: 5,
    name: "David Batumbakal",
    department: "GYM",
    purpose: "Maintenance",
    date: "05-15-2024",
    timeIn: "09:00 AM",
    timeOut: "10:30 AM",
    status: "",
  },
];

const GuardDashBoardTable: React.FC = () => {
  const [rows, setRows] = React.useState(initialRows);
  const [open, setOpen] = React.useState(false);

  const handleLogout = (id: number) => {
    setRows((prevRows) =>
      prevRows.map((row) =>
        row.id === id ? { ...row, status: "Logged out" } : row
      )
    );
    setOpen(true);
  };

  const handleClose: (
    event: React.SyntheticEvent | Event,
    reason?: string
  ) => void = (event, reason) => {
    if (reason === "clickaway") {
      return;
    }
    setOpen(false);
  };

  const columns: GridColDef[] = [
    { field: "id", headerName: "Visitor ID", width: 100 },
    { field: "name", headerName: "Visitor Name", width: 150 },
    { field: "department", headerName: "Department", width: 150 },
    { field: "purpose", headerName: "Purpose", width: 200 },
    { field: "date", headerName: "Date", width: 150 },
    { field: "timeIn", headerName: "Time In", width: 150 },
    { field: "timeOut", headerName: "Time Out", width: 150 },
    {
      field: "status",
      headerName: "Status",
      width: 150,
      renderCell: (params) =>
        params.value === "Logged out" ? (
          <span>{params.value}</span>
        ) : (
          <Button
            variant="contained"
            color="error"
            onClick={() => handleLogout(params.row.id)}
            size="small"
          >
            Logout
          </Button>
        ),
    },
  ];

  return (
    <div style={{ height: "100%", width: "100%" }}>
      <DataGrid
        rows={rows}
        columns={columns}
        initialState={{
          pagination: {
            paginationModel: { page: 0, pageSize: 12 },
          },
        }}
        pageSizeOptions={[5, 10]}
        checkboxSelection
      />
      <Snackbar
        open={open}
        autoHideDuration={6000}
        onClose={handleClose}
        anchorOrigin={{ vertical: "top", horizontal: "center" }}
      >
        <Alert onClose={handleClose} severity="success" sx={{ width: "100%" }}>
          Logged out successfully!
        </Alert>
      </Snackbar>
    </div>
  );
};

export default GuardDashBoardTable;
