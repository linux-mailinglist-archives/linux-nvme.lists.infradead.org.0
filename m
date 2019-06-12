Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EF04294E
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 16:33:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XRQnJTQb4IvIxqp545aLtmJQ/4GdApzRJDQcqO1Dvqw=; b=tloOqdxwiTIXtb
	2FtNuJ4K00EZ741mjTYkGI5IvV76ktulYPFSrawMZ5mRVtotOdjUVsitxTsKTt7Qg2bF0V42CSzCg
	LMVkwSZLAJn69JeKkuPCWeB5b1aatOnSIRnofMAI5+S1+GgDNU1tm7Ilit7LGl7hwww31o/GdGOm3
	1ZGutlZU7uA0kehZoFgh64GALvVW4neT1YRx4NCrKARavo804RzOPo+bVyp8qZ9UxeINoREnAQjpS
	4fw7qzQhKg4W2v9Lv9IO2cE0z06Xf8ElgPop5eNO49suh/R/iKrboBE9lXtm4TvzHOTvN7mPhAfAy
	D67M/yQyeW+ClrUibTNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4JK-0002ty-0l; Wed, 12 Jun 2019 14:33:10 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4JE-0002sv-9a
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 14:33:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so1889448wrl.9
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 07:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HUKqGe05Pb6zgw6RDjd1axpDapyL2aMPUaJVO2AtScM=;
 b=bj6+TzQSyieda9nmrZY4Os4EedFMWvAOj6ovbGm7q1WpWQFZ1HeHCX2nwODrvwlxP6
 5IQ522sEtOi3ICjg0+i/y8cKg75qr5K4jQi6qlRzHsYG/HYgK2oeXYj9tWOYZNGh70/l
 Nt5x574vpGVY1Ql6YzzgLMjyz2XswYllUduLSkbjww9xLvuD+mc0GBDL/beotOHNi9WP
 zKji8Z9S0k1Ehoi6hqWO2gOVedlLjJAwRQeysd9iODRo2NiQ4v2w4jxnb8N6WNwAADMx
 KVswqRnyD/4x7DIldBtJfr5eKqzRnVAkTfrBlBvlB+y9kpXUWRtKrS8W8gd2G5tGS5tJ
 KOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HUKqGe05Pb6zgw6RDjd1axpDapyL2aMPUaJVO2AtScM=;
 b=RNyJ3OXWUzt5P7QzrJPjTA1kLMTp0GLYMVQ5Z2WLvFf60zbq192mWf5akLhp4DCRjn
 K81TfKFJKgz7YLrh9Q8SPmlzLVl6496HSPPnwyiC6rYypdQhYgSZ3LcQQJYmi78f8uMu
 S1+oVQAbKplxYdWjs6ymzEF4xKIsv2zDSl+dNgJketbKwRwUnWON0WybIcQ57HtmTCdj
 PzWjyYoU0myTHMbbFYMiu4lGYgVNNpXtAX8FWRKi3E1ZDnWxyJhv1+fB7nOY0xEHNCyp
 yXIIWkzqrjA5Y9vBoci4lAOf5b4pJBfU1Yl4uEAAAeFITWoAFvFosWNAtmeQxLx0Fezd
 ZMfA==
X-Gm-Message-State: APjAAAU2aTXM6ApXmL6JGtt7nGQ40Z9eCLf/caR4ePoxrcAIQUcqXnTU
 sMsMwVt+tolaqaA1pi1y0ntBNjcRBvQ2bUSuNlM=
X-Google-Smtp-Source: APXvYqwUKKVE25V0R6QySoA81QTCMxX2IWB6TzJCr4k/wQYSrpB32IZNfVDUYrZQwa+dGzVnnVKyF0vtLb/TF/Y9OBg=
X-Received: by 2002:a5d:6b12:: with SMTP id v18mr55904909wrw.306.1560349978526; 
 Wed, 12 Jun 2019 07:32:58 -0700 (PDT)
MIME-Version: 1.0
References: <20190610074456.2761-1-drake@endlessm.com>
 <CAOSXXT7OFzHeTxNqZ1sS6giRxhDcrUUnVjURWBiFUc5T_8p=MA@mail.gmail.com>
 <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
In-Reply-To: <CAD8Lp45djPU_Ur8uCO2Y5Sbek_5N9QKkxLXdKNVcvkr6rFPLUQ@mail.gmail.com>
From: Keith Busch <keith.busch@gmail.com>
Date: Wed, 12 Jun 2019 08:32:46 -0600
Message-ID: <CAOSXXT7H6HxY-za66Tr9ybRQyHsTdwwAgk9O2F=xK42MT8HsuA@mail.gmail.com>
Subject: Re: [PATCH] PCI: Add Intel remapped NVMe device support
To: Daniel Drake <drake@endlessm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_073304_535146_6D0CB568 
X-CRM114-Status: UNSURE (   7.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (keith.busch[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Mon, Jun 10, 2019 at 8:46 PM Daniel Drake <drake@endlessm.com> wrote:
> What's the specific problem that you see here?

Performance. Have you had a chance to benchmark these storage devices
comparing legacy vs MSI interrupts? I don't think anyone would chose
the slower one on purpose. These platforms have an option to disable
raid mode, so the kernel's current recommendation should be the user's
best option.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
