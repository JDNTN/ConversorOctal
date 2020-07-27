package Manejador;

/**
 *
 * @author dntn
 */
public class Manejador {
    
    public static int obtenerValor(int entrada, int nivel, int resultado){
        entrada = (int) (entrada * Math.pow(8, nivel));
        resultado += entrada;
        return resultado;
    }
}
