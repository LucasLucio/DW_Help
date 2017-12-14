/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.dw_help;

import DAOs.DAOCidade;
import DAOs.DAOPessoa;
import Entidades.Cidade;
import Entidades.Pessoa;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lukas
 */
@WebServlet(name = "Cadastro", urlPatterns = {"/Cadastro"})
public class Cadastro extends HttpServlet {

    private String Cadastrou = "";

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
            Pessoa pessoa = new Pessoa();
            DAOs.DAOPessoa daoPessoa = new DAOs.DAOPessoa();

            int Id = daoPessoa.autoIdPessoa();
            String Nome = request.getParameter("nome");
            String RG = request.getParameter("rg");
            String CPF = request.getParameter("cpf");
            String Telefone = request.getParameter("tel");
            String Email = request.getParameter("email");
            String Login = request.getParameter("login");
            String Senha = request.getParameter("senha");
            String DataNasc = request.getParameter("nasc");
            String Sexo = request.getParameter("sex");

            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            String DataCad = sdf.format(date);
            System.out.println(Sexo);
            int Cidade = Integer.valueOf(request.getParameter("cid"));
            System.out.println(Cidade);
            DAOPessoa controle = new DAOPessoa();
            Pessoa entidade = new Pessoa();

            DAOCidade daoCidade = new DAOCidade();
            Cidade cidade = new Cidade();
            boolean ver_Nome = Nome.matches("^[a-zA-Z]+$");

            entidade.setIdPessoas(Id);
            entidade.setNome(Nome);
            entidade.setRg(RG);
            CPF = CPF.replaceAll("\\.", "");
            CPF = CPF.replaceAll("-", "");
            entidade.setCpf(CPF);
            entidade.setTelefone(Telefone);
            entidade.setEmail(Email);
            entidade.setLogin(Login);
            entidade.setSenha(Senha);
            String[] aux = DataNasc.split("-");
            DataNasc = aux[2] + "/" + aux[1] + "/" + aux[0];

            System.out.println(CPF);
            try {
                sdf.setLenient(false);
                entidade.setDataNasc(sdf.parse(DataNasc));
            } catch (ParseException ex) {
                System.out.println("Erro");
            }
            entidade.setSexo(Sexo);
            try {
                entidade.setDataCadastro(sdf.parse(DataCad));
            } catch (ParseException ex) {
                Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
            }
            cidade = daoCidade.obter(Cidade);
            entidade.setCidadeIdCidade(cidade);
            controle.inserir(entidade);
            Cadastrou = "sim";

            //Envia para outra página
            RequestDispatcher rd = request.getRequestDispatcher("LoginNovo.jsp");
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

    public String getCadastrou() {
        return Cadastrou;
    }

    public void setCadastrou(String Cadastrou) {
        this.Cadastrou = Cadastrou;
    }



}
