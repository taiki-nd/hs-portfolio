module ApplicationHelper

  def default_meta_tags
    {
      site: "Shio's photo",
      title: "Shio's web",
      reverse: true,
      charset: 'utf-8',
      description: 'My gallery & favorites',
      keywords: 'shio,写真,ポートフォリオ',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('logo.png') },
        { href: image_url('logo.png'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/png' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('DSF6569.jpg'),
        local: 'ja-JP',
      },
      twitter: {
        card: 'summary_large_image',
        site: '@FX_Traders_',
        image: image_url('DSF6569.jpg'),
      }
    }
  end

end
