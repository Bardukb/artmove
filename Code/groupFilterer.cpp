//
//  main.cpp
//  imageMover
//
//  Created by Bora Bardük on 12.12.2017.
//  Copyright © 2017 Bora Bardük. All rights reserved.
//

#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>
#include <sys/stat.h>
using namespace std;

void copyFile(const char* src_loc, const char* dest_loc)
{
    fstream in, out;
    in.open(src_loc, fstream::in|fstream::binary);
    
    if(in.is_open())
    {
        out.open(dest_loc, fstream::out);
        
        char tmp;
        while(in.read(&tmp, 1))
        {
            out.write(&tmp, 1);
        }
        
        out.close();
    }
    
    in.close();
    
}

int main(int argc, const char * argv[]) {
    
    ifstream file("train_info.csv");

    
    
    string from;
    string to;
    
    if (file.is_open())
    {
        cout << "File successfully opened";
    }
    
    string filename = "";
    string artist = "";
    string title = "";
    string style = "";
    string genre = "";
    string date = "";
    string deneyici = "";
    

    
    while (getline(file, filename, ','))
    {
        
        
        getline(file, artist, ',') ;
        getline(file, title, ',') ;
        getline(file, style, ',');
        getline(file, genre, ',');
        getline(file, date, ',');
        
        mkdir("myfolder", 0775);
        
        if (genre.compare("Impressionism")==0 || genre.compare("Realism")==0 || genre.compare("Romanticism")==0 || genre.compare("Expressionism")==0 || genre.compare("Post-Impressionism")==0 || genre.compare("Surrealism")==0 || genre.compare("Art Nouveau (Modern)")==0 || genre.compare("Baroque")==0 || genre.compare("Symbolism")==0 || genre.compare("Abstract Expressionism")==0 || genre.compare("Naïve Art (Primitivism)")==0 || genre.compare("Neoclassicism")==0 || genre.compare("Cubism")==0 || genre.compare("Northern Renaissance")==0 || genre.compare("Rococo")==0){
            
            const char * c = genre.c_str();
            mkdir( c, 0775);
            from = "train_1/" + artist;
            to = genre + "/" + artist;
            copyFile(from.c_str(), to.c_str());
        }

        
    }
    
    return 0;
}

