import * as React from "react";
import { DataGrid, GridColDef } from "@mui/x-data-grid";

const GuardTable: React.FC = () => {
  const columns: GridColDef[] = [
    { field: "id", headerName: "Guard ID", width: 150 },
    { field: "name", headerName: "Guard Name", width: 200 },
    { field: "date", headerName: "Date", width: 150 },
    { field: "timeIn", headerName: "Time In", width: 150 },
    { field: "timeOut", headerName: "Time Out", width: 150 },
    { field: "visitorCount", headerName: "Visitor Count", width: 150 },
    { field: "status", headerName: "Status", width: 250 },
  ];

  const rows = [
    {
      id: 1,
      name: "John Doe",
      date: "2024-05-01",
      timeIn: "08:00",
      timeOut: "16:00",
      visitorCount: 10,
      status: "Active",
    },
    {
      id: 2,
      name: "Jane Smith",
      date: "2024-05-01",
      timeIn: "09:00",
      timeOut: "17:00",
      visitorCount: 15,
      status: "Inactive",
    },
    {
      id: 3,
      name: "Bob Johnson",
      date: "2024-05-02",
      timeIn: "08:30",
      timeOut: "16:30",
      visitorCount: 8,
      status: "Active",
    },
    {
      id: 4,
      name: "Alice Brown",
      date: "2024-05-02",
      timeIn: "09:00",
      timeOut: "17:00",
      visitorCount: 20,
      status: "Inactive",
    },
    {
      id: 5,
      name: "Charlie Black",
      date: "2024-05-03",
      timeIn: "08:00",
      timeOut: "16:00",
      visitorCount: 12,
      status: "Active",
    },
  ];

  return (
    <div style={{ height: 400, width: "100%" }}>
      <DataGrid
        rows={rows}
        columns={columns}
        initialState={{
          pagination: {
            paginationModel: { page: 0, pageSize: 5 },
          },
        }}
        pageSizeOptions={[5, 10]}
        checkboxSelection
      />
    </div>
  );
};

export default GuardTable;
