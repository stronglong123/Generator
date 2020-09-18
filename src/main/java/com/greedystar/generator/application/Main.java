package com.greedystar.generator.application;

import com.greedystar.generator.invoker.Many2ManyInvoker;
import com.greedystar.generator.invoker.One2ManyInvoker;
import com.greedystar.generator.invoker.SingleInvoker;
import com.greedystar.generator.invoker.base.Invoker;
import gui.ava.html.image.generator.HtmlImageGenerator;

import java.util.Arrays;
import java.util.List;

/**
 * Author GreedyStar
 * Date   2018/9/5
 */
public class Main {

    public static void main(String[] args) {

        single();
//        one2many();
//        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6);
//
//        System.out.println("skip:");
//        numbers.stream().skip(2).forEach(System.out::println);
//        System.out.println(numbers.toString());
//
//        System.out.println("limit:");
//        numbers.stream().limit(2).forEach(System.out::println);
//        System.out.println(numbers.toString());
    }


    public static void many2many() {
        Invoker invoker = new Many2ManyInvoker.Builder()
                .setTableName("user")
                .setClassName("User")
                .setParentTableName("role")
                .setParentClassName("Role")
                .setRelationTableName("user_role")
                .setForeignKey("userId")
                .setParentForeignKey("roleId")
                .build();
        invoker.execute();
    }

    public static void one2many() {
        Invoker invoker = new One2ManyInvoker.Builder()
                .setTableName("transfernote")
                .setClassName("TransferNote")
                .setParentTableName("transfernoteitem")
                .setParentClassName("TransferNoteItem")
                .setForeignKey("TransferNote_Id")
                .build();
        invoker.execute();
    }

    public static void single() {
        Invoker invoker = new SingleInvoker.Builder()
                .setTableName("bomstrategy")
                .setClassName("BomStrategy")
                .build();
        invoker.execute();
    }

}
