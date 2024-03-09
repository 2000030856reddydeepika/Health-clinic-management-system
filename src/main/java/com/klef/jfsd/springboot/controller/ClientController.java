package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Appointment;
import com.klef.jfsd.springboot.model.Doctor;
import com.klef.jfsd.springboot.model.Hospital;
import com.klef.jfsd.springboot.model.Patient;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.DoctorService;
import com.klef.jfsd.springboot.service.HospitalService;
import com.klef.jfsd.springboot.service.PatientService;
import com.klef.jfsd.springboot.service.AppointmentService;

@Controller
public class ClientController 
{
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private PatientService PatientService;
	
	@Autowired
	private DoctorService DoctorService;
	
	@Autowired
	private HospitalService hospitalService;
	
	@Autowired
	private AppointmentService appointmentService;
	

	
	
	
	@GetMapping("/")
   public String mainhomedemo()
   {
	   return "index";
   }
	@GetMapping("/about")
	   public String aboutdemo()
	   {
		   return "about";
	   }
	@GetMapping("/contact")
	   public String contactdemo()
	   {
		   return "contact";
	   }


	
	
	//Admin module
	
	@GetMapping("/login") 
	public ModelAndView  logindemo()
	{
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	@GetMapping("/adminhome") 
	public ModelAndView adminhome()
	{
		ModelAndView mv = new ModelAndView("adminhome");
		return mv;
	}
	
	@GetMapping("/viewallpatients") 
	public ModelAndView  viewallpatients()
	{
		ModelAndView mv = new ModelAndView("viewallpatients"); 
	List<Patient> patlist=	adminService.viewallpatients();
	mv.addObject("patlist", patlist);
		return mv;
	}
	@PostMapping("/checkadminlogin") 
	public ModelAndView checkadminlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String auname = request.getParameter("auname");
		String apwd = request.getParameter("apwd");
		
		Admin admin = adminService.checkadminlogin(auname, apwd);
		
		if(admin!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("auname", auname);
			
			mv.setViewName("adminhome");
		}
		
		else
			
		{
			mv.setViewName("adminlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	
	
	
	
	//patient module
	
	@GetMapping("/patientlogin") 
	public ModelAndView  patientlogindemo()
	{
		ModelAndView mv = new ModelAndView("patientlogin");
		return mv;
	}
	
	@GetMapping("/patientreg") 
	public ModelAndView  patientregdemo()
	{
	  ModelAndView mv= new ModelAndView("patientregistration", "pat", new Patient());
	  return mv;
	}
	
	@PostMapping("/addpatient")
	public String addpatientdemo(@ModelAttribute("pat") Patient pat)
	
	{
		PatientService.addpatient(pat);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("patientregistration");
//		mv.addObject("msg", "Patient Registered Successfully");
		return "redirect:patientlogin"; 
		
}
	@PostMapping("/checkpatientlogin") 
	public ModelAndView checkpatientlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String puname = request.getParameter("puname");
		String ppwd = request.getParameter("ppwd");
		
		Patient patient = PatientService.checkpatientlogin(puname, ppwd);
		
		if(patient!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("puname", puname);
			
			mv.setViewName("patienthome");
		}
		
		else
			
		{
			mv.setViewName("patientlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	@GetMapping("/deletepatient")
	public String deletepatientdemo(@RequestParam("id") int pid)
	{
		adminService.deletepatient(pid); 
		return "redirect:viewallpatients";
	}
	
	@GetMapping("/viewpatientbyid")
    public ModelAndView viewpatientbyiddemo(@RequestParam("id") int pid)
    {
      Patient patient = adminService.viewpatientbyid(pid);
      
      ModelAndView mv = new ModelAndView();
      
      mv.setViewName("viewpatientbyid");
      mv.addObject("patientlist",patient);
      
      return mv;
    }
	
	
	
	
	
	// Doctor Module
	
	@GetMapping("/doctorlogin") 
	public ModelAndView  doctorlogindemo()
{
		ModelAndView mv = new ModelAndView("doctorlogin");
		return mv;
}
	
	@PostMapping("/adddoctor")
	public String adddoctordemo(@ModelAttribute("doc") Doctor doc)
	
	{
	     DoctorService.adddoctor(doc);
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("patientregistration");
//		mv.addObject("msg", "Patient Registered Successfully");
		return "redirect:adminhome"; 
		
}
	
	@PostMapping("/checkdoctorlogin") 
	public ModelAndView checkdoctorlogindemo(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String duname = request.getParameter("duname");
		String dpwd = request.getParameter("dpwd");
		
		Doctor doctor = DoctorService.checkdoctorlogin(duname, dpwd);
		
		if(doctor!=null)
		{
			
			HttpSession session = request.getSession();
			
			session.setAttribute("duname", duname);
			
			mv.setViewName("doctorhome");
		}
		
		else
			
		{
			mv.setViewName("doctorlogin");
			mv.addObject("msg", "Login Failed");
		}
		
		
		return mv;
	}
	
	
	@GetMapping("/doctorreg") 
	public ModelAndView  doctorregdemo()
	{
	  ModelAndView mv= new ModelAndView("doctorregistration", "doc", new Doctor());
	  return mv;
	}
	
	@GetMapping("/viewalldoctors") 
	public ModelAndView  viewalldoctors()
	{
		ModelAndView mv = new ModelAndView("viewalldoctors"); 
	List<Doctor> doclist=	adminService.viewallDoctors();
	mv.addObject("doclist", doclist);
		return  mv;
	}
	
	@GetMapping("/deletedoctor")
	public String deletedoctordemo(@RequestParam("id") int did)
	{
		adminService.deletedoctor(did); 
		return "redirect:viewallDoctors";
	}
	
	@GetMapping("/viewdoctorbyid")
    public ModelAndView viewdoctorbyiddemo(@RequestParam("id") int did)
    {
      Doctor doctor = adminService.viewdoctorbyid(did);
      
      ModelAndView mv = new ModelAndView();
      
      mv.setViewName("viewdoctorbyid");
      mv.addObject("doctorlist",doctor);
      
      return mv;
    }
	
	
	
	//hospital module
	
	   @GetMapping("/addhospital")
	   public ModelAndView addhospitaldemo()
	   {
		   ModelAndView mv = new ModelAndView("addhospital");
		   return mv;
	   }
	   
	   @PostMapping("/inserthospital")
	   public String inserthospitaldemo(HttpServletRequest request,@RequestParam("hospitalimage") MultipartFile file) throws IOException, SerialException, SQLException
	   {
		   String hospitalname = request.getParameter("hospitalname");
		   String specialist = request.getParameter("specialist");
		   String specialistname = request.getParameter("specialistname");
		   String description = request.getParameter("description");  
			  byte[] bytes = file.getBytes();
			  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			  
			  Hospital h = new Hospital();
			  h.setHospitalimage(blob);
			  h.setHospitalname(hospitalname);
			  h.setSpecialist(specialist);
			  h.setSpecialistname(specialistname);
			  h.setDescription(description);

			  
			  hospitalService.AddHospital(h);
			  
			  return "redirect:adminhome";
	   }
	   
	   @GetMapping("/viewallhosps")
	   public ModelAndView viewallhospsdemo()
	   {
		   ModelAndView mv = new ModelAndView("viewallhospitals");
		   List<Hospital> hospitallist = hospitalService.ViewAllHospitals();
		    mv.addObject("hospitallist", hospitallist);
		   
		   return mv;
	   }
	   
	@GetMapping("/displayhospimage")
	public ResponseEntity<byte[]> displayhospimagedemo(@RequestParam("id") int id) throws IOException, SQLException
	{
	  Hospital hospital =  hospitalService.ViewHospitalByID(id);
	  byte [] imageBytes = null;
	  imageBytes = hospital.getHospitalimage().getBytes(1,(int) hospital.getHospitalimage().length());

	  return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}

	   @GetMapping("/viewhospitalbyid")
	public ModelAndView  viewhospitalbyiddemo()
	{
		   List<Hospital> hospitallist=hospitalService.ViewAllHospitals();
		   ModelAndView mv=new ModelAndView("viewhospitalbyid");
		   mv.addObject("hospitallist",hospitallist);
		   return mv;
	}
	   
	   @PostMapping("/displayhospital")
	   public ModelAndView displayhospitaldemo(HttpServletRequest request)
	   {
		   int hid=Integer.parseInt(request.getParameter("hid"));
		   Hospital hospital=hospitalService.ViewHospitalByID(hid);
		   ModelAndView mv=new ModelAndView("displayhospital");
		   mv.addObject("hospital",hospital);
		   return mv;
	   }
	   
	   
	   
	   
	   //appointment

		@PostMapping("/addappointment")
		public String addappointment(@ModelAttribute("app") Appointment app)
		{
			   appointmentService.addappointment(app);
//			   ModelAndView mv = new ModelAndView("addappointment");
			   return "redirect:patienthome"; 
		   }
	   
	   
	   @PostMapping("/insertappointment")
	   public String insertappointmentdemo(HttpServletRequest request)
		{
			ModelAndView mv =  new ModelAndView();
		   String hospitalname = request.getParameter("hospitalname");
		   String specialist = request.getParameter("specialist");
		   String problem = request.getParameter("problem");  
		   String date = request.getParameter("date");  
		   
			  
		   Appointment a = new Appointment();

			  a.setHospitalname(hospitalname);
			  a.setSpecialist(specialist);
			  a.setProblem(problem);
			  a.setDate(date);
			  

			  appointmentService.addappointment(a);
			  
			  return "redirect:patienthome";
	   }
	   
	   
	   
	   @GetMapping("/viewallapps")
	   public ModelAndView viewallappsdemo()
	   {
		   ModelAndView mv = new ModelAndView("viewallappointments");
		   List<Appointment> appointmentlist = appointmentService.ViewAllAppointments();
		    mv.addObject("appointmentlist", appointmentlist);
		   
		   return mv;
	   }
	   
	   @GetMapping("/viewappointmentbyid")
	public ModelAndView  viewappointmentbyiddemo()
	{
		   List<Appointment> appointmentlist=appointmentService.ViewAllAppointments();
		   ModelAndView mv=new ModelAndView("viewappointmentbyid");
		   mv.addObject("appointmentlist",appointmentlist);
		   return mv;
	}
	   
	   @PostMapping("/displayappointment")
	   public ModelAndView displayappointmentdemo(HttpServletRequest request)
	   {
		   int aid=Integer.parseInt(request.getParameter("aid"));
		   Appointment appointment=appointmentService.ViewAppointmentByID(aid);
		   ModelAndView mv=new ModelAndView("displayappointment");
		   mv.addObject("appointment",appointment);
		   return mv;
	   }
   

}
