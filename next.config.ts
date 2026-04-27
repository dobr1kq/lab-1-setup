/** @type {import('next').NextConfig} */
const nextConfig = {
  output: 'export', // Додайте цей рядок
  images: {
    unoptimized: true, // Потрібно для статичного експорту, якщо використовуєте <Image />
  },
};

export default nextConfig;