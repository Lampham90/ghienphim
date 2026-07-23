import { initializeApp, getApps } from "firebase/app";
import { getAuth, GoogleAuthProvider } from "firebase/auth";
// ✅ Đổi từ 'firebase/firestore' sang 'firebase/firestore/lite'
import { getFirestore } from "firebase/firestore/lite";

const firebaseConfig = {
  apiKey: "AIzaSyDUxa0ZRojGmSgUVqWzibZ68MvyAwxxebo",
  authDomain: "kkphim-3f70e.firebaseapp.com",
  projectId: "kkphim-3f70e",
  storageBucket: "kkphim-3f70e.firebasestorage.app",
  messagingSenderId: "530424681807",
  appId: "1:530424681807:web:136bb2e2ae2ec0de18e13a",
  measurementId: "G-797F11L4RV"
};

const app = getApps().length === 0 ? initializeApp(firebaseConfig) : getApps()[0];

const auth = getAuth(app);
// ✅ Firestore Lite chạy qua HTTP, không lo Cloudflare chặn TCP
const db = getFirestore(app);
const googleProvider = new GoogleAuthProvider();

export { auth, db, googleProvider };
export default app;