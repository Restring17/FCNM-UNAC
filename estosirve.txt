package Ejercicio1;
import java.util.Scanner;
/**
 *
 * @author User
 */
public class AscciiFija {
public static void main(String[] args) {
        Scanner lector=new Scanner(System.in);
        StringBuilder reporte = new StringBuilder();
        String[] nombres = {"JUAN CARLOS GARCIA", "RODRIG ANA MARIELA TORRES","ROSA INONAN FARRO", "CARLOS ALBERTO ROJAS CHAN",
                "GABRIELA LUCIA ALVITES CH"};
        int[] edades = {19, 25, 22, 24, 25};
        int[] grados = {5, 5, 4, 5, 5};
        double[][] notas = {{20, 19, 15, 17}, {20, 17, 18, 16}, {20, 18, 12, 13}, {16, 18, 15, 12}, {20, 20, 14, 15}};
        double[] promedios = {17.75, 17.75, 15.75, 15.25, 17.25};
        double promf,sum;
        sum=0;
            for (int i = 0; i < promedios.length; i++) {
                sum=sum+promedios[i];
                }
            promf=sum/promedios.length;
            String titulo = String.format("%26s", "").replace(" ", "#");
            String separador = String.format("%69s", "").replace(" ", "#");
            System.out.printf("%1$sReporte de Notas%1$s", titulo);
            System.out.printf("\n%-24s","NOMBRE");
            System.out.println("EDAD GRADO   PC1    PC2    PC3    EF    PROM ");
            System.out.println(separador);
            for (int i = 0; i < nombres.length; i++) {
            reporte.append(String.format("%-25s", nombres[i]));
            reporte.append(String.format("%3d %3d    %3.2f  %3.2f  %3.2f  %3.2f  %3.2f", edades[i], grados[i],
                    notas[i][0], notas[i][1], notas[i][2], notas[i][3], promedios[i]));
            reporte.append("\n");
        }
            reporte.append(separador);
            reporte.append(String.format("\nPROMEDIO TOTAL:                                                 %.2f\n", promf));
            reporte.append(separador);
            System.out.println(reporte);
    }
}