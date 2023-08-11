import subprocess
import os

subprocess.call(["pip", "install", "chromedriver-autoinstaller"])
subprocess.call(["pip", "install", "webdrivermanager"])

current_dir = os.path.dirname(os.path.abspath(__file__))
requirements_path = os.path.join(current_dir, 'requirements.txt')
subprocess.check_call(['pip', 'install', '-r', requirements_path])
