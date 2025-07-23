# windows-file-transfer-automation-batch

# Citrix Application Deployment Preparation Automation (Windows Batch Script)

I'm excited to share a real-world automation I implemented to streamline the *Citrix application deployment preparation process*. This Windows batch script drastically reduces manual effort and improves accuracy during deployments, replacing a tedious, error-prone routine with a fast and reliable automated solution.

---

## 📌 Background

There was an earlier script designed to automate this task, but it was abandoned due to firewall and connectivity issues. As a result, the team reverted to a manual workflow for over a year. With those issues now resolved, I enhanced and revived the automation to work seamlessly in our current environment.

---

## ⚠️ Manual Process – Problems

Previously, deployment preparation involved multiple manual steps:

- Logging into the Deploy1 server to locate the patch
- Opening *WinSCP*, logging in to Deploy1, transferring the delivery to the local machine
- Opening *RDP*, logging into the deplu1vw server, and manually copying files
- Repeating the process for every patch/delivery

This process was *time-consuming* (1–2 hours for just 2–4 files), *repetitive, and **error-prone*.

---

## ✅ Automated Workflow – My Solution

To solve this, I developed a *Windows Batch Script* (patch_delivery.bat) that automates the entire flow:

### 🔧 Script Workflow:
1. Navigate to the D:\Received directory on the local machine
2. Prompt the user to:
   - Enter the delivery file name
   - Enter the prodadm password
3. Automatically:
   - Connects to the deploy1 server
   - Securely copies the files using scp
   - Places the delivery directly into the RDP target folder on deplu1vw

No need to manually log into servers, use WinSCP, or perform any copy-paste steps.

---

## ⏱️ Key Benefits

| Metric | Manual | Automated |
|--------|--------|-----------|
| Time per deployment | 1–2 hours | 2–3 minutes |
| Monthly time saved (5–6 deployments) | ~5–6 hours | ⏳ |
| Yearly time saved | ~60–72 hours | 🎯 |

### 💡 Additional Advantages:
- *Ease of Use*: One-time input, no technical knowledge needed
- *Reliability*: Works consistently with the resolved connectivity issues
- *Scalability*: Can be extended to other delivery flows or servers

---

## 📁 Repository Structure

## ▶️ How to Run

1. Open RDP to deplu1vw
2. Go to D:\Received
3. Right-click and *Run as Administrator* on patch_delivery.bat
4. Enter:
   - Delivery folder name (e.g., KIAS2000_PR_31305)
   - user's password
5. Sit back — the script handles the rest!

---

## 🔐 Disclaimer

This is a sanitized version of a production automation tool. All sensitive server names, credentials, and internal details have been anonymized or generalized.

---

## 📜 License

This project is released under the [MIT License](LICENSE).

---

## 🙋‍♂️ Author

*Tejas Vinchurkar*  
DevOps Engineer | Automation Enthusiast  
[LinkedIn](https://linkedin.com/in/tejasvinchurkar) • [GitHub](https://github.com/tejas-16)
