
package uddi;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para cuadrado complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="cuadrado">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="lado1" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "cuadrado", propOrder = {
    "lado1"
})
public class Cuadrado {

    protected double lado1;

    /**
     * Obtiene el valor de la propiedad lado1.
     * 
     */
    public double getLado1() {
        return lado1;
    }

    /**
     * Define el valor de la propiedad lado1.
     * 
     */
    public void setLado1(double value) {
        this.lado1 = value;
    }

}
