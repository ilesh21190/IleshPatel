import java.awt.Color;
import java.awt.Container;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JApplet;
import javax.swing.JButton;

public class SimpleApplet extends JApplet implements ActionListener {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JButton jb;
	Container c = null;

	public void init() {
		c = getContentPane();
		c.setLayout(new FlowLayout());
		jb = new JButton("Click Me");
		jb.addActionListener(this);
		c.add(jb);

	}

	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		// jb.setVisible(false);
		c.setBackground(Color.red);
	}

}
