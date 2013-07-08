/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.Hostel;

/**
 *
 * @author Sony
 */
import com.github.sarxos.webcam.Webcam;
import com.github.sarxos.webcam.WebcamPanel;
import javax.swing.JApplet;
import javax.swing.JOptionPane;


public class WebcamAppletExample extends JApplet {

	private static final long serialVersionUID = 3517366452510566924L;

	private Webcam webcam = null;

	public WebcamAppletExample() {
		super();
	}

	@Override
	public void start() {
		webcam = Webcam.getDefault();
		if(webcam!=null)
			add(new WebcamPanel(webcam));
		else
			System.out.println("No Webcame Found");
			JOptionPane.showMessageDialog(rootPane, "No Webcame Found");
	}

	@Override
	public void destroy() {
		webcam.close();
	}
}
