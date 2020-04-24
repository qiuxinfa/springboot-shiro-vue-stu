package com.qxf.utils;

import org.apache.poi.hssf.usermodel.*;

/**
 * @Auther: qiuxinfa
 * @Date: 2020/4/23
 * @Description: com.qxf.utils
 */
public class ExcelUtil {
    /**
     * 导出Excel
     * @param sheetName sheet名称
     * @param title 标题
     * @param values 内容
     * @return
     */
    public static HSSFWorkbook getHSSFWorkbook(String sheetName, String []title, String [][]values){

        // 第一步，创建一个HSSFWorkbook，对应一个Excel文件
        HSSFWorkbook wb = new HSSFWorkbook();

        // 第二步，在workbook中添加一个sheet,对应Excel文件中的sheet
        HSSFSheet sheet = wb.createSheet(sheetName);

        // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制
        HSSFRow row = sheet.createRow(0);

        // 第四步，创建单元格样式，并设置值表头 设置表头居中
        HSSFCellStyle style = wb.createCellStyle();
        style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式

        //声明单元格
        HSSFCell cell = null;

        //创建标题
        for(int i=0;i<title.length;i++){
            //创建一个单元格
            cell = row.createCell(i);
            //给单元格赋值
            cell.setCellValue(title[i]);
            //给单元格设置样式
            cell.setCellStyle(style);
        }

        //创建内容
        if (values != null && values[0].length > 0){
            for(int i=0;i<values.length;i++){
                //从第二行开始创建数据填充的行，下标为1
                row = sheet.createRow(i + 1);
                for(int j=0;j<values[i].length;j++){
                    //将内容按顺序赋给对应的列对象
                    row.createCell(j).setCellValue(values[i][j]);
                }
            }
        }
        return wb;
    }
}
