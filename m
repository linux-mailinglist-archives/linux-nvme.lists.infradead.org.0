Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 356282E090
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 17:09:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bLBM0oDlBjQtKmsivgwwJlINzDBB6HtI1l4HFdm2SW8=; b=QL6J0oZVGbIzcQ
	cX62V7afso3E6bJttSboO3Rz/u80mAtd2FAm8cH/SEFUBMd4hbgfe9R6BobQslgoNPvkeKWjSB/YY
	Ps+164O6UtYRr4q9sL2AybdVpZI5SY8mmhp6yyVf3EgaQfJ+MVqsxuR9DUtyA2EhOXkW+YmG3+0YS
	0CIlpDch6fBeuyPpdjJioZYOXkcHt4Gl/JwMxZRWzRL6aab3GyTVIpct6Ghi64+8v114yhrkjlTiE
	gL8qbQP3JYtMPkKHmK0WivuznFjF4Q+UqJpL5JxrvLiMdkrSQJw+anff4umZwvSYhflIIOKb5msVH
	8cwOCIZAxye7dVTd5ssQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0CG-0000MK-II; Wed, 29 May 2019 15:08:56 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0CB-0000M0-7b
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 15:08:52 +0000
Received: by mail-io1-xd41.google.com with SMTP id g16so2108059iom.9
 for <linux-nvme@lists.infradead.org>; Wed, 29 May 2019 08:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d5mm6i6SlQOuViUezZBbHLCgjaf0YFUvTAwdCPBwLdU=;
 b=U+EDeYPq6ZinIhh46Ya4sGjXUf0VWdpnBrBxysLsOgbdNLw2ZpT0/LNnI2SG2IfhCz
 ZrVejVHg1Gm9KGeZqvYCLV/v06YiF5YUC2zRMbZNyJ183o+fIJuhn8VY9wiSxIlzQqJB
 sUzBgg1i2R4HZFZSa43UN6vasCLBQcs4QbXGgH7kik0GjQEyxaFN87fcSUkN2z+HSWZP
 i+bBrTkb8Z4TyiqYPAjMXIOeYXFjEMv5sJ5wD4ZkCXbzHkkZpaYr9e37tKYzFPkmexgb
 0FYaE3NgFxwsGPFZko3Q0bghNqNMaLL3qJC8GqwFqkvOYQUOS/mTAq7ZL0W9DL62jNVp
 ayyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d5mm6i6SlQOuViUezZBbHLCgjaf0YFUvTAwdCPBwLdU=;
 b=BG7vMbWsmV1NJNEtp1ti5iZOvIqnkDW+NLvc5WDAh/Iaq/rKLWhE9I+BksJcZfaJbq
 P7oJ4up9oSfGE469jVW7VUPVZ4p7Ii8f0E8XkZ2AHCOZXreKJnSpK+B6tkFQxqPNlTd+
 H3ZiYnDiQLKA01LaYYm2OV2xGXvIA0L9YDFPKOgIvESz4ze2y9K5F32FLTlq/0f8T5TG
 wFZ/D2NyWe6cZ17P8W2+4z0flHQpxw1l88HtQFs507UpIm0xJ/q9xtD54BPujsRjO+wY
 PWCBZaKyjHB6jxxL70qPDlu0pUPmuKFtAeHwJQzutmrHUYtNqMuEgV6jnEJaW+B5BKpQ
 PQNQ==
X-Gm-Message-State: APjAAAUvUmWGKaut9BdYeRRVDFVT+pBNnO+jFWfa6377hgfvT4x4JE9p
 qQEsLPFdotUyNg6LyKSDJqFDIkwWqt86mGenOoE=
X-Google-Smtp-Source: APXvYqybBbDOl8tndEUyFoDZRiPPrcNkI+o3N8fzupjADtpJR+KN/fGnMh2Wg7X+rjRuYfjXPBW/L/sIHSZ6d/QlHNw=
X-Received: by 2002:a5e:9703:: with SMTP id w3mr30961421ioj.238.1559142524726; 
 Wed, 29 May 2019 08:08:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190523231429.21235-1-kenneth.heitke@intel.com>
 <99e76784-ce68-c053-9fde-d035d77f11d3@grimberg.me>
 <18209f57-0c8a-dfa8-af31-7f33ec3cfc0c@intel.com>
In-Reply-To: <18209f57-0c8a-dfa8-af31-7f33ec3cfc0c@intel.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 29 May 2019 09:08:33 -0600
Message-ID: <CAOSXXT4FVyyG1gc9hfe8TdH-TDxU=gVCT-0g8tqkgZVUr5eGeA@mail.gmail.com>
Subject: Re: [PATCH] nvme: Ignore timeouts while PCI config access is blocked
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_080851_304926_538A2A9C 
X-CRM114-Status: GOOD (  16.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, axboe@fb.com,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 28, 2019, 4:32 PM Heitke, Kenneth <kenneth.heitke@intel.com> wrote:
> On 5/24/2019 12:35 AM, Sagi Grimberg wrote:
> >
> >>   static void nvme_reset_done(struct pci_dev *pdev)
> >>   {
> >>       struct nvme_dev *dev = pci_get_drvdata(pdev);
> >> -    nvme_reset_ctrl_sync(&dev->ctrl);
> >> +    nvme_reset_ctrl(&dev->ctrl);
> >
> > This change is not explained in the change log. This opens a window
> > for nvme_reset_work to run concurrently from different contexts which
> > is not a good idea...
>
> I think Keith recommended the asynchronous reset
>
> "Definitely need the nvme_reset_ctrl change as blk_cfg_access is still
> set here so need to reset asynchronously to unblock new timeouts"
>
> Keith, does this still hold true or do I need some other mechanism to
> avoid the issues that Sagi is concerned about?

Can't use the pci's block_cfg_access in timeout if doing synchronous
resets in reset_done. We wouldn't be able to handle IO timeouts during
reset using that, so would need to use something else, maybe introduce
a new flag like your original patch.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
