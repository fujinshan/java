package com.utiltools;

import java.util.*;

/**
 * 数组公共方法,数组之间的比较
 */
public class StringArrayTool {
    //找出两个数组中相同的元素 Object 可以Integer 和 String
    public static Set<Integer> getMaxValueArray(Integer [] a,Integer[] b)
    {
        Set<Integer> same = new HashSet<Integer>(); // 用来存放两个数组中相同的元素
        Set<Integer> temp = new HashSet<Integer>();//用来存放数组中重复的元素

        for (int i = 0; i < a.length ; i++) {
            temp.add(a[i]); // 把数组a中的元素放到Set中，可以去除重复的元素
        }

        for (int j = 0; j <b.length ; j++) {
            //把数组b中的元素添加到temp中
            //如果temp中已存在相同的元素，则temp.add(b[j])返回false

            if(!temp.add(b[j]))
            {
                same.add(b[j]);
            }

        }
        return  same;

    }

    /**
     * 找出两个数组中不相同的元素
     * @param t1
     * @param t2
     * @param <T>
    比较2个数组不相同的元素， 应该遍历多的， 然后在遍历中拿少的跟多的比较。
    for (T t : 多) {
    if (!少.contains(t)) {
    不相同的集合.add(t);
    }
    }
    其中 :
    多 为 多的集合
    少 为 少的集合
    t 为 多的集合的元素
    不相同的集合 为 放不相同元素的集合
     * @return
     */
    public static <T> List<T> compare(T[] t1, T[] t2) {
        List<T> list1 = Arrays.asList(t1); //将t1数组转成list数组
        List<T> list2 = new ArrayList<T>();//用来存放2个数组中不相同的元素
        for (T t : t2) {
            if (!list1.contains(t)) {
                list2.add(t);
            }
        }
        return list2;
    }

    /**
     *
     * 比较2个数组不相同的元素， 应该遍历多的， 然后在遍历中拿少的跟多的比较。
     * for (T t : 多) {
     * if (!少.contains(t)) {
     * 不相同的集合.add(t);
     * }
     * }
     * 其中 :
     * 多 为 多的集合
     * 少 为 少的集合
     * t 为 多的集合的元素
     * 不相同的集合 为 放不相同元素的集合
     */
    public static void main(String[] args) {

        Integer[] a ={1,2,3,9};
        Integer[] b ={1,2,4,8,90};

        List<Integer> sameElementSet = compare(a, b);
        for(Object i : sameElementSet) {
            System.out.println(i);
        }
    }

}
