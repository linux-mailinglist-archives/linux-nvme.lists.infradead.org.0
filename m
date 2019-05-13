Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA9D1B16C
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 09:46:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSFkPZNVXsEqpd3Pr5hh6dpvO+8ZjRWXjgfI0CJ6O/0=; b=WRL/qwjV/181ns
	RLZq3xXQi85d8CqqMzB3ftBMNqPjJLb0l5bTZrN3cEX4nyk8aZK0SRIYQTWgUrCJQsgiP+KGC742S
	H+KhH/AqOF3MyzoV70E2t3zine99VLkH1v2y0q11JRrA+xNkBH5C8VPOiA2apbQmql+JRYfzJ+6Nk
	QdP7+VuZeypsQLMH7BbicBbEK2UrPbnsztIt6AUDykZB00Fxz8YPF1aGIlM+GCfoQxbvSi2KWGtGy
	YUzA2Rb7XZhPKjMiBBSy8fu19A7hZGWJleeE1B0h92ojr57ACCZoBRoG5CsdgtEm+T8kQOvA/8udu
	VY57ELfyQmLj9mBcC9ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ5f7-0001V2-DA; Mon, 13 May 2019 07:46:17 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ5f1-0001UD-Iw
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 07:46:13 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190513074608epoutp02e004023cd22a0d8b6524168d45153c2d~eLm1JQsfn2028420284epoutp027
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 07:46:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190513074608epoutp02e004023cd22a0d8b6524168d45153c2d~eLm1JQsfn2028420284epoutp027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1557733568;
 bh=szTOp4qdFhF5LZJ70Oq3g8WGaUzNNw6KiVLFGlGom3M=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=WW4c84ZuJCYR1m8TXGRWyoh38AQR96nAbw6HAenGw/LRV9d4IIJ/EuyjyUC+IgGaa
 KOj5yHi8fFHh8//2ylk9nwhvMbnr88iLw/RgfWPnHmZ02AirDiRx3c/MvPkalP56Rr
 au/lk+DMcqa977FKUVtbcNTXafdFiCXGI8Bto9Dk=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.189]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190513074605epcas2p4594314afd8cddf9bf1dde4c608a5ce7a~eLmyib23C1624816248epcas2p4B;
 Mon, 13 May 2019 07:46:05 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-8f-5cd920ba3383
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 75.D6.04195.AB029DC5; Mon, 13 May 2019 16:46:02 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH v3 5/7] nvme-pci: add device coredump infrastructure
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Minwoo Im
 <minwoo.im@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190513074601epcms2p12c0a32730a16be3b69b68e3c9d4d0b92@epcms2p1>
Date: Mon, 13 May 2019 16:46:01 +0900
X-CMS-MailID: 20190513074601epcms2p12c0a32730a16be3b69b68e3c9d4d0b92
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Ta0hTcRjG+Z9ztp25Fqdp9WZR60hJhbotZ6fIijQ7UMEgqDDLDnpw0m7t
 zEtBZdnVyDQockp2z7SbdtGmH3SZFM0ig5qRo0itZk3Mohtdth2lvv14eN/3eZ//hcRVjdJo
 Mtfi4O0WzkRLI4jbd2cxcS51d4bmR6mM8bceQMyflg4pc6nuHsYMXf9EML57nzHG/SmVeeqq
 kjLVF/pkzI+DCqb/YSvOXB0YJJYo2PLigIy94+yRsY999QR7tuU9xt44t5Nt7i6SsqU3axF7
 5PBtgh1umGqQp5sWGnkum7ereUuWNTvXkpNMr1idmZKpT9Jo47TzmXm02sKZ+WQ6daUhLi3X
 FNyVVudzprygZOAEgU5YtNBuzXPwaqNVcCTTvC3bZNNqbfECZxbyLDnxWVbzAq1Go9MHKzeZ
 jPeflSPbG3lhf28HUYROy0qQnAQqEZqf/8RKUASpopoQPPnciUoQSSqpcfCrKTJUE0mxEHjq
 wUOyipoG3/waUZ4FgWaPJMRSKhaKjvmJEEdRdQj8XUxoJE5dxqDrwbBE9FLCif19hMiTofHi
 LRRiOZUG3sZDI/p46K77KBvlwY5qJHIU7PV14iKPg1ffm8NrAgXgCywScSfcrAnbArUHgffD
 lZHWBNj1dig8Xkmtgt3XDmEhJqgZ0OYqG6lJhcFdbWFbPBix8WNVOC4ezHjNlSCOj4H2F4RY
 MRYO3P0lGw3VdLIXEzkGhtzukSUnwcWuAanYykJl2TrxjB8geO96JylDaue/Y3b+5+v853sK
 4bVoAm8TzDm8oLNp/7/ZBhR+tLOXNaETj1a6EUUieoySeuvNUEm4fGGr2Y2AxOkoZfr0oKTM
 5rZu4+3WTHueiRfcSB+MX45Hj8+yBr+AxZGp1euSkjTz9Yw+ScfQE5U3FN0ZKiqHc/Cbed7G
 20f7MFIeXYQGooufT3nC/gmk5S8B37v+esXvgnlrH3ngqNygS2nB+l4W3jopPS+0Gzw7hpe3
 HTkjnE08/nNmRUHsHJtx2ZeNE3oUhhr94fU9ERva53rHOLmCPZV9hZ3FNV8lr7dXb/F7l3Zc
 UDQY7KXJB9Uxa1Zvvh/fWRJb8W2xBl+R0lq+z0MTgpHTzsbtAvcXmrYWDMoDAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190512155540epcas4p14c15eb86b08dcd281e9a93a4fc190800
References: <1557676457-4195-6-git-send-email-akinobu.mita@gmail.com>
 <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
 <CGME20190512155540epcas4p14c15eb86b08dcd281e9a93a4fc190800@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_004611_789287_7E6CB1FD 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: minwoo.im@samsung.com
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static int nvme_get_telemetry_log_blocks(struct nvme_ctrl *ctrl, void *buf,
> +					 size_t bytes, loff_t offset)
> +{
> +	loff_t pos = 0;
> +	u32 chunk_size;
> +
> +	if (check_mul_overflow(ctrl->max_hw_sectors, 512u, &chunk_size))
> +		chunk_size = UINT_MAX;
> +
> +	while (pos < bytes) {
> +		size_t size = min_t(size_t, bytes - pos, chunk_size);
> +		int ret;
> +
> +		ret = nvme_get_log(ctrl, NVME_NSID_ALL,
> NVME_LOG_TELEMETRY_CTRL,
> +				   0, buf + pos, size, offset + pos);
> +		if (ret)
> +			return ret;
> +
> +		pos += size;
> +	}
> +
> +	return 0;
> +}
> +
> +static int nvme_get_telemetry_log(struct nvme_ctrl *ctrl,
> +				  struct sg_table *table, size_t bytes)
> +{
> +	int n = sg_nents(table->sgl);
> +	struct scatterlist *sg;
> +	size_t offset = 0;
> +	int i;
> +
> +	for_each_sg(table->sgl, sg, n, i) {
> +		struct page *page = sg_page(sg);
> +		size_t size = min_t(int, bytes - offset, sg->length);
> +		int ret;
> +
> +		ret = nvme_get_telemetry_log_blocks(ctrl,
> page_address(page),
> +						    size, offset);
> +		if (ret)
> +			return ret;
> +
> +		offset += size;
> +	}
> +
> +	return 0;
> +}

Can we have those two in nvme-core module instead of being in pci module?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
