package LibraryManagement;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author avinash
 */
public class ExcelExport {

    public static boolean generateFile(Object[][] tdata, String[] columns, String location, String fileName) {
        XSSFWorkbook workbook = new XSSFWorkbook();
        XSSFSheet sheet = workbook.createSheet("Fine Statement");
        int rowNum = 0;
        int cellNum = 0;
        Row row = sheet.createRow(rowNum++);
        for (int i = 0; i < columns.length; i++) {
            Cell cell = row.createCell(cellNum++);
            cell.setCellValue(columns[i]);
            sheet.autoSizeColumn(cellNum);
            cell.setCellStyle(getNewCellStyle(workbook));
        }
        if (tdata != null) {
            for (int rowIndex = 0; rowIndex < tdata.length; rowIndex++) {
                Object[] trow = tdata[rowIndex];
                row = sheet.createRow(rowNum++);
                for (int colIndex = 0; colIndex < trow.length; colIndex++) {
                    Object value = trow[colIndex];
                    Cell cell = row.createCell(colIndex);
                    if (value instanceof String) {
                        cell.setCellValue((String) value);
                    } else if (value instanceof Integer) {
                        cell.setCellValue((Integer) value);
                    } else {
                        cell.setCellValue(value.toString());
                    }
                    sheet.autoSizeColumn(colIndex);
                }
            }
        }
        try {
            //Write the workbook in file system
            FileOutputStream out = new FileOutputStream(new File(location + "/" + fileName + ".xlsx"));
            workbook.write(out);
            out.close();
            return true;
            //System.out.println("howtodoinjava_demo.xlsx written successfully on disk.");
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static CellStyle getNewCellStyle(XSSFWorkbook workbook) {
        CellStyle style = workbook.createCellStyle();
        style.setFillBackgroundColor(IndexedColors.BLACK.getIndex());
        style.setFillPattern(CellStyle.ALIGN_FILL);
        Font font = workbook.createFont();
        font.setColor(HSSFColor.WHITE.index);
        style.setFont(font);
        return style;
    }

    public static boolean uploadFile(File file) throws IOException, SQLException {
        Connection con = Connect.connectDB();
        PreparedStatement pst;
        String sql = "insert into booktable(isbn,bookname,author,publisher,year) values(?,?,?,?,?)";
        pst = con.prepareStatement(sql);
        FileInputStream fis = new FileInputStream(file);
        XSSFWorkbook wb = new XSSFWorkbook(fis);
        XSSFSheet sheet = wb.getSheetAt(0);
        Iterator<Row> itr = sheet.iterator();
        int i = 1;
        Row row = itr.next();
        while (itr.hasNext()) {
            row = itr.next();
            Iterator<Cell> cellItr = row.cellIterator();
            while (cellItr.hasNext()) {
                Cell cell = cellItr.next();
                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        pst.setString(i, cell.getStringCellValue());
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        pst.setInt(i, (int) cell.getNumericCellValue());
                        break;
                    default:
                }
                i++;
            }
            pst.addBatch();
            i = 1;
        }
        fis.close();
        int[] j = pst.executeBatch();
        con.close();
        if (j.length != 0) {
            return true;
        } else {
            return false;
        }
    }
}
