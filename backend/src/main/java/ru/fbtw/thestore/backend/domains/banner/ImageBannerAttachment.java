package ru.fbtw.thestore.backend.domains.banner;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.Hibernate;

import java.util.LinkedHashSet;
import java.util.Objects;
import java.util.Set;

@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "image_banner_attachment")
public class ImageBannerAttachment  {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private Long id;

	@ElementCollection
	@Column(name = "image", length = 300)
	@CollectionTable(name = "image_banner_attachment_images", joinColumns = @JoinColumn(name = "image_id"))
	private Set<String> images = new LinkedHashSet<>();



	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || Hibernate.getClass(this) != Hibernate.getClass(o)) return false;
		ImageBannerAttachment that = (ImageBannerAttachment) o;
		return getId() != null && Objects.equals(getId(), that.getId());
	}

	@Override
	public int hashCode() {
		return getClass().hashCode();
	}
}