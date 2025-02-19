class OpenLibraryService
    BASE_URL = "https://openlibrary.org/api/books"
  
    def self.fetch_book(isbn)
        return nil if isbn.blank?
      
        begin
          response = HTTParty.get("#{BASE_URL}?bibkeys=ISBN:#{isbn}&format=json&jscmd=data", timeout: 5)
          return nil unless response.success?
      
          data = JSON.parse(response.body)["ISBN:#{isbn}"]
          return nil unless data
      
          {
            title: data["title"].presence || "Untitled",
            author: data.dig("authors", 0, "name").presence || "Unknown Author",
            isbn: isbn,
            cover_url: data.dig("cover", "large"),
            synopsis: data["description"] || data["notes"]
          }
        rescue => e
          Rails.logger.error "Open Library Error: #{e.message}"
          nil
        end
      end
  end
  