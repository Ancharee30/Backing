from cgitb import grey
import cv2
import pytesseract
import matplotlib.pyplot as plt
import easyocr
import os
from gtts import gTTS
import pygame

from tkinter import *
from tkinter import filedialog
from PIL import ImageTk, Image

pytesseract.pytesseract.tesseract_cmd = 'C:\Program Files\Tesseract-OCR\tesseract.exe'


class TextFromImageApp:
    def __init__(self):
        self.root = Tk()
        self.root.title('TechVidvan Text from image project')

        self.newline = Label(self.root)
        self.uploaded_img = Label(self.root)
        self.scrollbar = Scrollbar(self.root)
        self.scrollbar.pack(side=RIGHT, fill=Y)

        self.extractBtn3 = None

        uploadbtn = Button(
            self.root,
            text="Upload an image",
            command=self.upload,
            bg="#2f2f77",
            fg="gray",
            height=2,
            width=20,
            font=('Times', 15)
        )
        uploadbtn.pack()

        self.newline.configure(text='\n')
        self.newline.pack()
        self.uploaded_img.pack()

        open_camera_btn = Button(
            self.root,
            text="Open Camera",
            command=self.open_camera,
            bg="#2f2f77",
            fg="gray",
            pady=15,
            padx=15,
            font=('Times', 15, 'bold')
        )
        open_camera_btn.pack()

    def open_camera(self):
        cap = cv2.VideoCapture(0)
        while True:
            ret, frame = cap.read()
            cv2.imshow('Camera', frame)
            if cv2.waitKey(1) == ord('q'):
                cv2.imwrite('captured_image.jpg', frame)
                cv2.imshow('Captured Image', frame)
                cv2.waitKey(0)
                cv2.destroyAllWindows()
                self.extract_tesseract('captured_image.jpg')
                break
        cap.release()
        cv2.destroyAllWindows()

    def extract_tesseract(self, path):
        Actual_image = cv2.imread(path)
        Sample_img = cv2.resize(Actual_image, (400, 350))
        Image_ht, Image_wd, Image_thickness = Sample_img.shape
        Sample_img = cv2.cvtColor(Sample_img, cv2.COLOR_BGR2RGB)
        texts = pytesseract.image_to_data(Sample_img)
        mytext = ""
        prevy = 0
        for cnt, text in enumerate(texts.splitlines()):
            if cnt == 0:
                continue
            text = text.split()
            if len(text) == 12:
                x, y, w, h = int(text[6]), int(text[7]), int(text[8]), int(text[9])
                if len(mytext) == 0:
                    prey = y
                if prevy - y >= 10 or y - prevy >= 10:
                    print(mytext)
                    Label(self.root, text=mytext, font=('Times', 15, 'bold')).pack()
                    mytext = ""
                mytext = mytext + text[11] + " "
                prevy = y
        Label(self.root, text=mytext, font=('Times', 15, 'bold')).pack()
        tts = gTTS(text=mytext, lang='th')
        tts.save('output.mp3')
        pygame.mixer.init()
        pygame.mixer.music.load("output.mp3")
        pygame.mixer.music.play()
        while pygame.mixer.music.get_busy():
            continue
        pygame.mixer.quit()

    def extract_easyocr(self, path):
        reader = easyocr.Reader(['en', 'th'])
        result = reader.readtext(path)
        for detection in result:
            text = detection[1]
            print(text)
            Label(self.root, text=text, font=('Times', 15, 'bold')).pack()
            tts = gTTS(text=text, lang='th')
            tts.save('output.mp3')
            pygame.mixer.init()
            pygame.mixer.music.load("output.mp3")
            pygame.mixer.music.play()
            while pygame.mixer.music.get_busy():
                continue
            pygame.mixer.quit()

    def extract_tesseract_and_easyocr(self, path):
        self.extract_tesseract(path)
        self.extract_easyocr(path)

    def clear_results(self):
        for widget in self.root.winfo_children():
            if isinstance(widget, Label):
                widget.configure(text="")

    def show_extract_button(self, path):
        extractBtn2 = Button(
            self.root,
            text="Extract text with EasyOCR",
            command=lambda: self.extract_easyocr(path),
            bg="#2f2f77",
            fg="gray",
            pady=15,
            padx=15,
            font=('Times', 15, 'bold')
        )
        extractBtn2.pack()
        if not self.extractBtn3:
            self.extractBtn3 = Button(
                self.root,
                text="Clear Results",
                command=self.clear_results,
                bg="#2f2f77",
                fg="gray",
                pady=15,
                padx=15,
                font=('Times', 15, 'bold')
            )
            self.extractBtn3.pack()

    def upload(self):
        try:
            path = filedialog.askopenfilename()
            image = Image.open(path)
            img = ImageTk.PhotoImage(image)
            self.uploaded_img.configure(image=img)
            self.uploaded_img.image = img
            self.show_extract_button(path)
        except:
            pass

    def run(self):
        self.root.mainloop()


if __name__ == '__main__':
    app = TextFromImageApp()
    app.run()
