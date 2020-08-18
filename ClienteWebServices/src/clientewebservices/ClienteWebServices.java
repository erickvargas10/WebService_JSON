/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientewebservices;

/**
 *
 * @author ADMIN-MINEDUC
 */
public class ClienteWebServices {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) { 
 
        System.err.println("Resultado es : " + triangulo(5, 8));
    }
    
    private static double triangulo (double lado1, double lado2){
        uddi.Figuras_Service service = new uddi.Figuras_Service();
        uddi.Figuras port = service.getFigurasPort();
        return port.triangulo(lado1, lado2);
    }
    
}

