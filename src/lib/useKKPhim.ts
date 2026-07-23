import useSWR from 'swr';

const fetcher = (url: string) => fetch(url).then((res) => {
  if (!res.ok) throw new Error('API_ERROR');
  return res.json();
});

export function useKKPhimDetail(slug: string | null) {
  const { data, error, isValidating } = useSWR(
    slug ? `/api/kkphim?slug=${slug}` : null,
    fetcher,
    {
      revalidateOnFocus: false, // Không load lại khi quay lại tab
      revalidateOnReconnect: true,
      shouldRetryOnError: false, // Tránh loop nếu phim đó thực sự sập
    }
  );

  return {
    detail: data,
    loading: !data && !error,
    error: error ? "Ní đợi xíu, phim đang được bưng ra..." : null,
    isValidating
  };
}