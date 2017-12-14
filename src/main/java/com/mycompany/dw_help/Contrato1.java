/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.dw_help;

import Entidades.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lukas
 */
@WebServlet(name = "Contrato1", urlPatterns = {"/Contrato1"})
public class Contrato1 extends HttpServlet {

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
            String data = request.getParameter("data");
            String[] aux = data.split("-");
            data = aux[2]+"/"+aux[1]+"/"+aux[0];
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            //System.out.println(data);
            //Envia para outra página
            Entidades.Contrato contrato = new Entidades.Contrato();
            DAOs.DAOContrato daoContrato = new DAOs.DAOContrato();
            Entidades.Pessoa pessoa = new Entidades.Pessoa();
            DAOs.DAOPessoa daoPessoa = new DAOs.DAOPessoa();
            HttpSession session = request.getSession();
            String user = (String) session.getAttribute("username");
            List<Pessoa> list = daoPessoa.listByLogin(user);
            pessoa = list.get(0);
            contrato.setPessoaIdPessoas(pessoa);
            contrato.setIdContrato(daoContrato.autoIdContrato());
            try {
                contrato.setDataContrato(sdf.parse(data));
            } catch (ParseException ex) {
                Logger.getLogger(Contrato1.class.getName()).log(Level.SEVERE, null, ex);
            }
            contrato.setContratoDescricao("Contrato feito na Web");
            contrato.setValorContrato(-1000);
            daoContrato.inserir(contrato);
            RequestDispatcher rd = request.getRequestDispatcher("Contrato2.jsp");
            rd.forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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

}
