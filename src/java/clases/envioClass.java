/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author gabip
 */
@WebServlet(name = "envioClass", urlPatterns = {"/envioClass"})
public class envioClass extends HttpServlet {

    ArrayList<String> puntuaciones = new ArrayList<>();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet envioClass</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet envioClass at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        //  System.out.println("Name: " + request.getParameter("name").toString());
        request.getRequestDispatcher("res_nivel1.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        // System.out.println("Name: " + request.getParameter("imp"));
        //System.out.println("Name: " + request.getParameter("prob"));

        ArrayList<String> impacto = new ArrayList<>();
        ArrayList<String> probabiliad = new ArrayList<>();
        ArrayList<String> valoracion = new ArrayList<>();
        String prob = request.getParameter("prob"), imp = request.getParameter("imp");
        riesgo r;
        for (int i = 0; i < 12; i++) {
            impacto.add(imp.substring(imp.indexOf("" + i), imp.indexOf("-")));
            probabiliad.add(prob.substring(prob.indexOf("" + i), prob.indexOf("-")));
            imp = imp.substring(imp.indexOf("-") + 1);
            prob = prob.substring(prob.indexOf("-") + 1);
            if (impacto.get(i).contains("im_muyalto")) {
                if (probabiliad.get(i).contains("pro_muybajo")) {
                    valoracion.add("alto");
                } else {
                    valoracion.add("muyalto");
                }
            }
            if (impacto.get(i).contains("im_alto")) {
                if (probabiliad.get(i).contains("pro_muybajo")) {
                    valoracion.add("medio");
                }
                if (probabiliad.get(i).contains("pro_bajo") || probabiliad.get(i).contains("pro_medio")) {
                    valoracion.add("alto");
                } else {
                    valoracion.add("muyalto");
                }
            }
            if (impacto.get(i).contains("im_medio")) {
                if (probabiliad.get(i).contains("pro_muybajo")) {
                    valoracion.add("bajo");
                }
                if (probabiliad.get(i).contains("pro_bajo") || probabiliad.get(i).contains("pro_medio")) {
                    valoracion.add("medio");
                } else {
                    valoracion.add("alto");
                }
            }
            if (impacto.get(i).contains("im_bajo")) {
                if (probabiliad.get(i).contains("pro_muybajo")) {
                    valoracion.add("muybajo");
                }
                if (probabiliad.get(i).contains("pro_bajo") || probabiliad.get(i).contains("pro_medio")) {
                    valoracion.add("bajo");
                } else {
                    valoracion.add("medio");
                }
            }
            if (impacto.get(i).contains("im_muybajo")) {
                if (probabiliad.get(i).contains("pro_muybajo") || probabiliad.get(i).contains("pro_bajo") || probabiliad.get(i).contains("pro_medio")) {
                    valoracion.add("muybajo");
                } else {
                    valoracion.add("bajo");
                }
            }

            //System.out.println(impacto.get(i) + "-" + probabiliad.get(i) + "-" + valoracion.get(i));
        }

        ArrayList<Integer> puntuacion = calificar(valoracion);
        String val = "", pun = "", cal = "";
        int total=0;
        for (int n = 0; n < 12; n++) {
            val = val + valoracion.get(n);
            pun = pun + puntuaciones.get(n);
            total= total+puntuacion.get(n);
            cal = cal + puntuacion.get(n);
            if (n != 11) {
                val = val + "-";
                pun = pun + "-";
                cal = cal + "-";
            }
        }
        /*request.setAttribute("valoracion",val);
                request.setAttribute("puntuacion",pun);
        request.setAttribute("correcto",cal);  ^*/
        //request.getRequestDispatcher("res_nivel1.jsp").forward(request, response);
        guardarValoracion guardar = new guardarValoracion();
        String user = request.getSession(false).getAttribute("userid").toString();
        String partida = request.getSession(false).getAttribute("partidaId").toString();
        String res = guardar.guardarValores(user, partida, impacto, probabiliad, valoracion);
        guardar.upDatepuntuacion(""+total, partida);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write("val=" + val + "&pun=" + pun + "&cal=" + cal);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public ArrayList<Integer> calificar(ArrayList<String> val) {
        puntuaciones.add("alto");
        puntuaciones.add("muyalto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("muyalto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        puntuaciones.add("alto");
        ArrayList<Integer> res = new ArrayList<>();
        for (int m = 0; m < 12; m++) {
            if (val.get(m).equals(puntuaciones.get(m))) {
                res.add(10);
            } else if ((val.get(m).equals("muyalto") || val.get(m).equals("medio")) && puntuaciones.get(m).equals("alto")) {
                res.add(5);
            } else if ((val.get(m).equals("alto")) && puntuaciones.get(m).equals("muyalto")) {
                res.add(5);
            } else {
                res.add(0);
            }
            //System.out.println(""+m+"" + val.get(m)+" "+puntuaciones.get(m)+" "+res.get(m));
        }
        return res;
    }
}
