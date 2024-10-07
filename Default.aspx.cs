using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppPractica
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //declara una coleccion de objetos Libro
            List<Libro> libros = new List<Libro>();

            //Agregar algunos libros
            libros.Add(new Libro("HTML", 100));
            libros.Add(new Libro("C# Total", 200));
            libros.Add(new Libro("ASP.NET", 150));
            libros.Add(new Libro("API REST", 75));
            libros.Add(new Libro("WEB Services", 140));

            //Enlazar el control teplate repeater
            this.Repeater1.DataSource = libros;
            this.Repeater1.DataBind();

            //DataBind();

            if (!IsPostBack)
            {
                ddlPrueba.DataSource = libros;
                ddlPrueba.DataTextField = "Nombre";
                ddlPrueba.DataValueField = "Precio";
                ddlPrueba.DataBind();

                lsbListBox.DataSource = libros;
                lsbListBox.DataTextField = "Nombre";
                lsbListBox.DataValueField = "Precio";
                lsbListBox.DataBind();
            }

          
        }

        protected void btnBoton_Click(object sender, EventArgs e)
        {
            txtTexto.Text = "Hola Mundo";
        }

        protected void imgBoton_Click(object sender, ImageClickEventArgs e)
        {
            txtTexto.Text = "Hola Boton";
        }

        protected void btnPrecio_click(object sender, EventArgs e)
        {
            txtPrecio.Text = lsbList.SelectedItem.Value;
        }

        protected void lsbListBox_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach (ListItem item in lsbListBox.Items)
            {
                if (item.Selected)
                {
                    lblValor.Text = item.Text;
                    txtValor.Text = item.Value;
                }
            }
        }
    }
}

class Libro
{
    public string Nombre { get; set; }
    public int Precio { get; set; }

    public Libro(string name, int precio)
    {
        Nombre = name;
        Precio = precio;
    }
}
