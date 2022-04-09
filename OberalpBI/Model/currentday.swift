import Foundation

struct Currentday: Codable, Identifiable {
    let id = UUID()
    var brandname: String
    var totalamount: Double
    var currency: String
    var totalorders: Int
    var day: String
}

let brandname = LandmarkDetail().brand.brandname

class ApiSalewaDay : ObservableObject{
    @Published var currentdayinfos = [Currentday]()
    
    func loadData(completion:@escaping ([Currentday]) -> ()) {
        
        guard let url = URL(string: "https://1h1omds22f.execute-api.eu-central-1.amazonaws.com/default/SkySql_Datafetch?method=currentday") else {
            print("Invalid url ...")
            return
        }
        
            var request = URLRequest(url: url)
            request.addValue("IbD33WglCJ5pBPJxhDkUf6xEFXLH5XT04IrGOsmu", forHTTPHeaderField: "x-api-key")
            request.httpMethod = "GET"
            request.setValue("brand", forHTTPHeaderField: brandname)
        //request.addValue("Token \(tokenString)", forHTTPHeaderField: "Authorization")
            URLSession.shared.dataTask(with: request) { (data: Data?, response: URLResponse?, error: Error?) in
                let currentdayinfos = try! JSONDecoder().decode([Currentday].self, from: data!)
                    //print(books)
                    DispatchQueue.main.async {
                        completion(currentdayinfos)
                    }
            }.resume()
        }
    }
