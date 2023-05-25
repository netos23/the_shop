package ru.fbtw.thestore.backend.services;

import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.fbtw.thestore.backend.data.banner.dto.BannerDto;
import ru.fbtw.thestore.backend.data.banner.mapper.BannerMapper;
import ru.fbtw.thestore.backend.domains.banner.*;
import ru.fbtw.thestore.backend.repositories.*;

import java.util.List;
import java.util.NoSuchElementException;

@Service
@RequiredArgsConstructor
public class BannerService {
    private final ImageBannerRepository imageBannerRepository;
    private final BannerRepository bannerRepository;
    private final MarkdownBannerRepository markdownBannerRepository;
    private final ProductBannerRepository productBannerRepository;
    private final TitleBannerRepository titleBannerRepository;
    private final BannerMapper bannerMapper;

    public List<BannerDto> getAllBanners() {
        List<Banner> banners = bannerRepository.findAll(Sort.by(Sort.Direction.ASC, "order"));
        return banners.stream().map(bannerMapper::toDto).toList();
    }

    @Transactional
    public BannerDto addOrUpdateBanner(BannerDto bannerDto) {
        if (bannerDto.getId() != null) {
            return updateBanner(bannerDto);
        }

        if (bannerDto.getBannerType().equals(BannerType.button)) {
            Banner banner = bannerRepository.save(bannerMapper.toEntity(bannerDto));
            bannerDto.setId(banner.getId());
            return bannerDto;
        }
        if (bannerDto.getBannerType().equals(BannerType.image)) {
            ImageBannerAttachment banner = imageBannerRepository.save(bannerMapper.toImageBannerEntity(bannerDto));
            bannerDto.setId(banner.getId());
            return bannerDto;
        }
        if (bannerDto.getBannerType().equals(BannerType.title)) {
            TitleBannerAttachment banner = titleBannerRepository.save(bannerMapper.toTitleBannerEntity(bannerDto));
            bannerDto.setId(banner.getId());
            return bannerDto;
        }
        if (bannerDto.getBannerType().equals(BannerType.markdown)) {
            MarkdownBannerAttachment banner = markdownBannerRepository.save(bannerMapper.toMarkdownBannerEntity(bannerDto));
            bannerDto.setId(banner.getId());
            return bannerDto;
        }
        if (bannerDto.getBannerType().equals(BannerType.products)) {
            ProductsBannerAttachment banner = productBannerRepository.save(bannerMapper.toProductsBannerEntity(bannerDto));
            bannerDto.setId(banner.getId());
            return bannerDto;
        }
        throw new NoSuchElementException("No value present");
    }

    @Transactional
    private BannerDto updateBanner(BannerDto bannerDto) {
        if (bannerDto.getBannerType().equals(BannerType.button)) {
            Banner beforeUpdate = bannerRepository.findById(bannerDto.getId()).orElseThrow();
            bannerMapper.partialUpdate(bannerDto, beforeUpdate);
            Banner afterUpdate = bannerRepository.save(beforeUpdate);
            return bannerMapper.toDto(afterUpdate);
        }
        if (bannerDto.getBannerType().equals(BannerType.image)) {
            ImageBannerAttachment beforeUpdate = imageBannerRepository.findById(bannerDto.getId()).orElseThrow();
            bannerMapper.imageBannerPartialUpdate(bannerDto, beforeUpdate);
            ImageBannerAttachment afterUpdate = imageBannerRepository.save(beforeUpdate);
            return bannerMapper.toDto(afterUpdate);
        }
        if (bannerDto.getBannerType().equals(BannerType.title)) {
            TitleBannerAttachment beforeUpdate = titleBannerRepository.findById(bannerDto.getId()).orElseThrow();
            bannerMapper.titleBannerPartialUpdate(bannerDto, beforeUpdate);
            TitleBannerAttachment afterUpdate = titleBannerRepository.save(beforeUpdate);
            return bannerMapper.toDto(afterUpdate);
        }
        if (bannerDto.getBannerType().equals(BannerType.markdown)) {
            MarkdownBannerAttachment beforeUpdate = markdownBannerRepository.findById(bannerDto.getId()).orElseThrow();
            bannerMapper.markdownBannerPartialUpdate(bannerDto, beforeUpdate);
            MarkdownBannerAttachment afterUpdate = markdownBannerRepository.save(beforeUpdate);
            return bannerMapper.toDto(afterUpdate);
        }
        if (bannerDto.getBannerType().equals(BannerType.products)) {
            ProductsBannerAttachment beforeUpdate = productBannerRepository.findById(bannerDto.getId()).orElseThrow();
            bannerMapper.productBannerPartialUpdate(bannerDto, beforeUpdate);
            ProductsBannerAttachment afterUpdate = productBannerRepository.save(beforeUpdate);
            return bannerMapper.toDto(afterUpdate);
        }
        throw new NoSuchElementException("No value present");
    }
}
