/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Reportes;

import MySQLconector.MySQLconexion;
import java.sql.Connection;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.WindowConstants;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author MI PC
 */
public class Reporte {

    public static void main(String[] args) {

        pdf(32);
    }

    public static void pdf(int id) {

        try {
            Connection conn = MySQLconexion.getConexion();
            JasperReport reporte = null;
            String path = "src\\java\\Reportes\\VentaJuegos.jasper";
            Map parametro = new HashMap();
            parametro.put("id_usuario", id);
            reporte = (JasperReport) JRLoader.loadObjectFromFile(path);

            JasperPrint jprint = JasperFillManager.fillReport(reporte, parametro, conn);
            JasperViewer view = new JasperViewer(jprint, false);
            view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
            view.setVisible(true);
        } catch (JRException ex) {
            Logger.getLogger(Reporte.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
}
