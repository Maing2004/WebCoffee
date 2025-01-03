package com.example.myservlet;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.*;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@Path("/products")
public class ProductResource {
    private ProductDAO dao = ProductDAO.getInstance();
    private Cart cart = new Cart();

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public List<Product> list() {
        return dao.listAll();
    }

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response add(Product product) throws URISyntaxException {
        int newProductId = dao.add(product);
        URI uri = new URI("/products/" + newProductId);
        return Response.created(uri).build();
    }

    @GET
    @Path("{id}")
    public Response get(@PathParam("id") int id) {
        Product product = dao.get(id);
        if (product != null) {
            return Response.ok(product, MediaType.APPLICATION_JSON).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }

    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("{id}")
    public Response update(@PathParam("id") int id, Product product) {
        product.setId(id);
        if (dao.update(product)) {
            return Response.ok().build();
        } else {
            return Response.notModified().build();
        }
    }

    @DELETE
    @Path("{id}")
    public Response delete(@PathParam("id") int id) {
        if (dao.delete(id)) {
            return Response.ok().build();
        } else {
            return Response.notModified().build();
        }
    }

    @POST
    @Path("cart/{id}")
    public Response addToCart(@PathParam("id") int id) {
        Product product = dao.get(id);
        if (product != null) {
            cart.addProduct(product);
            return Response.ok(cart.getQuantity()).build();
        } else {
            return Response.status(Response.Status.NOT_FOUND).build();
        }
    }

    @GET
    @Path("cart")
    @Produces(MediaType.APPLICATION_JSON)
    public Response getCart() {
        return Response.ok(cart.getProducts(), MediaType.APPLICATION_JSON).build();
    }
}
