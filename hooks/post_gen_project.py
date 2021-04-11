import shutil

remove_submit_folder = '{{cookiecutter.submit_strategy}}' != 'Use a submit directory for scripts'
if remove_submit_folder:
    shutil.rmtree("submit")

remove_report_folder = '{{cookiecutter.create_report_dir}}' != 'Yes: Create report directory'
if remove_report_folder:
    shutil.rmtree("reports")