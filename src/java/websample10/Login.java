/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package websample10;

/**
 *
 * @author nabana
 */
/**
 * ログイン処理クラス.
 */
public class Login {

    /**
     * 指定されたIDとパスワードに紐づくユーザ情報を返却します.
     *
     * @param id	ID
     * @param pass	パスワード
     * @return ユーザ情報
     */
    public LoginUserBean getUserData(String id, String pass) {
        // TODO:⑧Beanクラスを新規作成する
        LoginUserBean bean = null;

        // 引数のIDとパスワードを判定
        // TODO:⑨判定処理を追加する（条件はIDとパスワードが一致している場合）
        if (id.equals("web01") && pass.equals("password")) {
            // IDがweb01の場合
            // BeanにIDを設定
            // TODO:⑪ID設定
            // Beanに名前を設定
            // TODO:⑫名前設定
            String name = "Taro Cartman";
            // Beanに年齢を設定
            // TODO:⑬年齢設定
            int age = 18;

            bean = new LoginUserBean(id, name, age);
        } else if (id.equals("web02") && pass.equals("password")) {
            // TODO:⑩判定処理を追加する（条件はIDとパスワードが一致している場合）
            // IDがweb02の場合
            // BeanにIDを設定
            // TODO:⑭ID設定
            // Beanに名前を設定
            // TODO:⑮名前設定
            String name = "Jiro Cartman";
            // Beanに年齢を設定
            // TODO:⑯年齢設定
            int age = 10;
            
            bean = new LoginUserBean(id, name, age);
        }
        return bean;
    }
}
