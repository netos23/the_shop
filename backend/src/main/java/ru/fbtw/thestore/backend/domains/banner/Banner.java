package ru.fbtw.thestore.backend.domains.banner;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "banner", schema = "public")
public class Banner {
	@Id
	@Column(name = "banner_id", nullable = false)
	private Long id;

	@Column(name = "order", nullable = false)
	private Long order; //порядковый номер, на котором должен находиться баннер

	@Enumerated(EnumType.STRING)
	@Column(name = "banner_type", length = 120)
	private BannerType bannerType;

	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "title_banner_attachment_id")
	private TitleBannerAttachment titleBannerAttachment;

	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "products_banner_attachment_id")
	private ProductsBannerAttachment productsBannerAttachment;

	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "image_banner_attachment_id")
	private ImageBannerAttachment imageBannerAttachment;

	@OneToOne(cascade = CascadeType.ALL, orphanRemoval = true)
	@JoinColumn(name = "markdown_banner_attachment_id")
	private MarkdownBannerAttachment markdownBannerAttachment;

}