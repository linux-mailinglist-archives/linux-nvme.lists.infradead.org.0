Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B217746832
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Jun 2019 21:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aa/tmYf36Jq49WUo9UGpnVx/ePknMgQd1iWk2CUC+ps=; b=JaWgTQNd/T8WVG
	WjWmIZw3LVugjF0XvDzlhOmg+dEaZJlSq2rx6AxID1pN9xsujpGVImseGPcDfNo6qLsmpDW7Lscp3
	zqI2dVpXRJG/kMQPX4wHCjVJFZkRhVN0PnfJfm9tU/N292QCoRckBgnSbMsLRljksksOsjG2CbCIt
	Bf2Ulsyoz8i7vLdSzm47VgRSHnGJ/5LoVBXaV8MWB5xRZZ/5ybgcqZADcagHLAOF1j1bSsa7pajMP
	WwQPPdN/33zjmI/3CbptOrCZZf8VOIspUXJ+AlnBY69P2/rDoLTgWEv1KFu6rGyrVhRakWfY0fBKb
	L0sqbETUB6RVQ3FYcZUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbrzv-0002YE-MM; Fri, 14 Jun 2019 19:36:27 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbrzp-0002Hs-VQ
 for linux-nvme@lists.infradead.org; Fri, 14 Jun 2019 19:36:23 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so3689945wre.7
 for <linux-nvme@lists.infradead.org>; Fri, 14 Jun 2019 12:36:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Iuen4us4qwoV5tqtyFbIwEnmTYf7b4xea2g4tH0SWx8=;
 b=IAvJg8ETPBRJWFF/CGdbBAN8iyvgesw76DdfQRPlXss/RPtBIBuZhkJDiEW8DK2UMc
 OIwzjcMDGDtv7bFu86LRsy1jRy+fBurVJq1EdPU3m79G0+cU/wIujLwzNFr0kzjxKDcm
 ZayMCIIn1xqCRQ/SHsWj93ob6tAojWpoJma83UpFn9WmYv26W6nRECIiCeQ/g0cVDakV
 fQmTFt3znCEOGuFYOSWzlyasP5KWQ0oPB3p7ibde5NlXatrCcoSmWjXM6Fo7dJbmLhCV
 dA3126kW+XtzrUmACoqbo1PjUx3A/Me7lTRrgSEZ0ysSh5+dJDfQsUDGIoGYSHTYQqee
 HCyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Iuen4us4qwoV5tqtyFbIwEnmTYf7b4xea2g4tH0SWx8=;
 b=YeDa2g2KbrW3YNrbUBZsPE+5xNyy5to3r4PEfQGSLd8s01RnsoW5GJwJeLfx2TjmlG
 lTR7um8sFaL5ehISDds38A4PQ1p/6KmQ1Z0gucC5ZXNfp9PeBIKEv0TTaZZZmMOed9dk
 j83OA6KmoMEQhNnfksZ7meOboebWK+KGCsK6FUxoTsQ9iJJvvWejPf+coZkyjxw5Pp0L
 NPq5OadMzKOnJaiucYCNv8hq9BAUjvFEKOchAn/LKv7XoO80q08DelYviSyEZtyv1Ioi
 NPGJISlF3RZJNTEEs+KN4+akPQc8euVlWA6RXsEqR8XD0xuZkSmYYh81GkNdttqwesHj
 i+Ug==
X-Gm-Message-State: APjAAAVXGqvB06y6qh+tXHzEZED+nLNUtTPv4quzD3CM3hcdDNe0yomO
 yWiYyBHM+wj7iXpnkG0xsptTrK9KI4aTrGt6gAI=
X-Google-Smtp-Source: APXvYqzJyCR5WhUhz5HRAU2NajqT2EChTOtU9SC51qWgHHh2VgjMJakSG3j7zJQj+J0sE/Lje+oCGhTch8AZWAzJei4=
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr66636492wrw.306.1560540979110; 
 Fri, 14 Jun 2019 12:36:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
 <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
 <20190613085402.GC13442@lst.de>
 <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
In-Reply-To: <CAD8Lp47Vu=w+Lj77_vL05JYV1WMog9WX3FHGE+TseFrhcLoTuA@mail.gmail.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Fri, 14 Jun 2019 13:36:07 -0600
Message-ID: <CAOSXXT4Ba_6xRUyaQBxpq+zdG9_itXDhFJ5EFZPv3CQuJZKHzg@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Daniel Drake <drake@endlessm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_123622_046374_B94A9A61 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PCI <linux-pci@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Keith Busch <kbusch@kernel.org>,
 linux-ide@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Linux Upstreaming Team <linux@endlessm.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 8:26 PM Daniel Drake <drake@endlessm.com> wrote:
> On Thu, Jun 13, 2019 at 4:54 PM Christoph Hellwig <hch@lst.de> wrote:
> >  b) reset handling, including the PCI device removal as the last
> >     escalation step
>
> Apparently can't be supported, but it's not clear that this actually
> matters for a home PC...
>
> https://marc.info/?l=linux-ide&m=147733119300691&w=2
> "The driver seems to already comprehend instances where the
> device does not support nvme_reset_subsystem() requests."
>
> https://marc.info/?l=linux-ide&m=147734288604783&w=2
> "Talking with Keith, subsystem-resets are a feature of enterprise-class
> NVMe devices.  I think those features are out of scope for the class
> of devices that will find themselves in a platform with this
> configuration, same for hot-plug."

NVMe Subsystem resets are not the same thing as conventional PCI
resets. We still have use for the latter in client space.

Even if you wish to forgo the standard features and management
capabilities, you're still having to deal with legacy IRQ, which has
IOPs at a fraction of the hardware's true capabilities when using MSI.
I do not believe that is what users want out of their purchased
hardware, so your best option is still to set to AHCI mode for Linux
for this reason alone, and vendors should be providing this option in
BIOS.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
