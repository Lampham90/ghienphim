const axios = require('axios');
const mongoose = require('mongoose');

// Thay mật khẩu của bạn vào đây
const uri = "mongodb+srv://pplam5697_db_user:0933755697@dbkk.zfmkmly.mongodb.net/phimkk?retryWrites=true&w=majority&appName=dbkk";

mongoose.connect(uri)
    .then(() => console.log("--- KẾT NỐI ATLAS THÀNH CÔNG ---"))
    .catch(err => console.error("--- LỖI KẾT NỐI: ---", err));

const MovieSchema = new mongoose.Schema({}, { strict: false });
const Movie = mongoose.model('Movie', MovieSchema);

const delay = (ms) => new Promise(res => setTimeout(res, ms));

async function crawlFullData() {
    // Tạo mảng các năm từ 2026 lùi về 1990
    const startYear = 2026;
    const endYear = 1980;

    for (let year = startYear; year >= endYear; year--) {
        console.log(`\n=== BẮT ĐẦU CÀO DỮ LIỆU NĂM: ${year} ===`);

        let currentPage = 1;
        let totalPages = 1;

        do {
            try {
                console.log(`-> Đang cào trang: ${currentPage}/${totalPages} của năm ${year}`);
                const response = await axios.get(`https://phimapi.com/v1/api/danh-sach?year=${year}&page=${currentPage}`);

                const data = response.data.data;
                totalPages = data.params.pagination.totalPages;
                const items = data.items;

                for (const item of items) {
                    // Kiểm tra nếu phim đã tồn tại thì bỏ qua để tiết kiệm request API
                    const isExist = await Movie.findOne({ slug: item.slug });
                    if (isExist) continue;

                    // Gọi API chi tiết
                    const detailRes = await axios.get(`https://phimapi.com/phim/${item.slug}`);
                    const fullData = detailRes.data.movie;

                    // Chuẩn bị dữ liệu lưu
                    const movieToSave = { ...fullData };
                    delete movieToSave._id; // Xóa để MongoDB tự sinh ID mới
                    movieToSave.api_id = item._id; // Lưu ID gốc để đối chiếu

                    await Movie.findOneAndUpdate(
                        { slug: fullData.slug },
                        movieToSave,
                        { upsert: true, returnDocument: 'after' }
                    );

                    await delay(1200); // Delay 1.2s tránh bị server block
                }

                currentPage++;
            } catch (err) {
                console.error(`Lỗi tại năm ${year}, trang ${currentPage}: ${err.message}`);
                await delay(5000); // Nếu lỗi, đợi 5s rồi thử lại
            }
        } while (currentPage <= totalPages);
    }

    console.log("--- HOÀN TẤT CÀO TOÀN BỘ DỮ LIỆU ---");
    process.exit();
}

mongoose.connection.once('open', () => crawlFullData());