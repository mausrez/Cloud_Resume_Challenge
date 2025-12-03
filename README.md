# Cloud Resume Challenge

[![Deployment](https://github.com/mausrez/Cloud_Resume_Challenge/actions/workflows/terraform.yml/badge.svg)](https://github.com/mausrez/Cloud_Resume_Challenge/actions)

My professional resume deployed as a cloud-native application with Infrastructure as Code and CI/CD automation.

## 🌐 Live Demo

**[View Resume →](https://objectstorage.mx-monterrey-1.oraclecloud.com/n/axlhszrn6a5r/b/Cloud_Resume/o/index.html)**

## 🏗️ Architecture
```
┌─────────────────────┐
│   Frontend (OCI)    │  HTML/CSS/JS
│   Object Storage    │  Static hosting
└──────────┬──────────┘
           │
           │ API Call
           ↓
┌─────────────────────┐
│ Backend (Cloudflare)│  Serverless API
│   Workers + KV      │  Visitor counter
└─────────────────────┘
```

## ✨ Features

- **Real-time visitor counter** - Tracks page views with serverless backend
- **Infrastructure as Code** - All infrastructure defined in Terraform
- **Automated CI/CD** - Deploys on every push to main
- **Public HTTPS endpoint** - Secure, cloud-native hosting

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| **Frontend** | HTML, CSS, JavaScript |
| **Hosting** | Oracle Cloud Infrastructure Object Storage |
| **Backend** | Cloudflare Workers (Serverless) |
| **Database** | Cloudflare KV (Key-Value store) |
| **IaC** | Terraform |
| **CI/CD** | GitHub Actions |

## 🚀 Deployment Workflow

1. Make changes to code locally
2. Commit and push to GitHub
3. GitHub Actions automatically:
   - Validates Terraform configuration (`terraform plan`)
   - Deploys frontend files to OCI Object Storage
4. Live site updates within seconds
```bash
# Example workflow
git add Front/index.html
git commit -m "Updated work experience"
git push origin main
# 🎉 Auto-deploys!
```

## 📂 Project Structure
```
Cloud_Resume_Challenge/
├── Front/              # Frontend files
│   ├── index.html      # Resume content
│   ├── style.css       # Styling
│   └── script.js       # Visitor counter integration
├── terraform/          # Infrastructure as Code
│   ├── main.tf         # OCI bucket configuration
│   ├── variables.tf    # Variable definitions
│   └── provider.tf     # OCI provider setup
└── .github/
    └── workflows/
        └── terraform.yml   # CI/CD pipeline
```

## 🔧 Local Development

### Prerequisites
- Terraform >= 1.5
- Git

### Setup
```bash
# Clone repository
git clone https://github.com/mausrez/Cloud_Resume_Challenge.git
cd Cloud_Resume_Challenge

# Validate Terraform
cd terraform
terraform init
terraform plan
```

## 📊 CI/CD Pipeline

The GitHub Actions workflow:
1. **Validate Infrastructure** - Runs `terraform plan` to verify configuration
2. **Deploy Frontend** - Uploads HTML/CSS/JS to OCI Object Storage with correct Content-Types

## 🎓 What I Learned

- Infrastructure as Code with Terraform
- CI/CD automation with GitHub Actions
- Serverless architecture patterns
- OCI Object Storage configuration
- API integration and CORS handling
- GitOps workflows

Built with ☁️ by Mauricio Suárez
