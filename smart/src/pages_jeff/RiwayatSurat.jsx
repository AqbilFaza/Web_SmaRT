import "../styles/riwayat_surat.css";
import "../App.css";
import SidebarUser from "../component/SidebarUser";
import DynamicTable from "./Table";

const RiwayatSurat = () => {
  return (
    <div className="dashboard">
      <SidebarUser />
      <div className="dashboard--content">
        <h2>Riwayat Pembuatan Surat</h2>
        <div className="table-container">
          <DynamicTable />
        </div>
      </div>
    </div>
  );
};

export default RiwayatSurat;
