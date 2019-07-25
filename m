Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD8A74EF1
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 15:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XiFdRZDJopCoO5SkG2zjumtaWyyHDU+wCJ/Zd6i1cBQ=; b=ggvwhgtFl/86aC
	VNUMsz5gSnU22IU1Ue3Y1BmVAGB9TcfOQKujwp4MCAl7zyT2wfDs/Oa9QMGGk8zVkwYfHwt4XZi6e
	XSt5H/piL5KVYq5p87tbV5RA3Y7k/W5skVkRljSGyWY7ixVWALMVklDCD+s2QfRLQs3bFxbYOrcjv
	WnntLzfZvb/418nSK+OCBS+jRkx4Rk3Nw/h3fpUvdMNrz+2NpS/uHU7gNgZSjh/Z4CO6yvNfw2nfJ
	+9iBBKylJfMysoKZTQ3W4rdSkwnYdj+FftKZfEsOceWtfNm2BJkYvv3nzfh1tUrJqvadC7Mgqiut/
	xfCdkc5zrQ8MY/Y5b4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqdb1-0005gA-WC; Thu, 25 Jul 2019 13:15:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqdZo-0003lF-Ct
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 13:14:33 +0000
Received: by mail-pl1-x644.google.com with SMTP id b7so23453868pls.6
 for <linux-nvme@lists.infradead.org>; Thu, 25 Jul 2019 06:14:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mut94+Ig0D1WZMLMgqjo0fdxOTgp/jmf0ROWY/8OjU4=;
 b=AuEXaHtwq+L/h4JxWqbaAhpFHIeodbFkpOaWMctSKijpFsbgqRzg98FMNfSGbEC8n8
 CX8iLRFFsglvEoPLmjobFmWwFO1c9DVT4gimzG8dnhKUwvX44d2Ih8PeNml3KVGpmwQ2
 fQEiPSCI1thyRSPL3c5cWJIYHbc5T2032XUHNrIsXRHkUlg++QGv8voXNmLwvEnJXuFR
 qjzy00ZPKwTDEFZ7IZiwryUXQ0V3VBQMZe68pxSd7hu2sHO4JC8Zgow5EGTiZ26Q244E
 +3QmS/eNb1BKND8oxQtga9TRby2LKT0TvAKoNp9X9sWAsvpJ59FHz6W2IIoKjpzDZ3JP
 iBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mut94+Ig0D1WZMLMgqjo0fdxOTgp/jmf0ROWY/8OjU4=;
 b=jNumqdSsw+RQ1VlbEzpJfXdkS0Vhf9Fx/AsfmNO1hZnfBfExAobEiFR5wnkKntjFH7
 1xd0VllXM3E8/YpjUgIT0ooNl7zLHGHgFicoENoX4zoknjo28I4CIJQ3FkbJX8uFnHrG
 fPEXctEb2uCTuyaZi8aW+oThR56EPoxHlg28W68z5xppevUsgsBYYdwfJ2rsetLZhrD/
 /dOGPkvHq0sZ0esKeVmEocbTMyFzbDW6C+LXumIXIw1i2p9TmDTgTU4WkH1bbpMC+kDG
 hXnC1jc2WLF1G+BgoD52xlSX0p3qmAhm7gEaRso+urXnBmY4aHbtamw5tQMmVDkRkEqv
 KFew==
X-Gm-Message-State: APjAAAVQXtb+GhNDMj33SoDKjTl4pJxSFvgaWNaCUQwv/MZZ25kW1T6J
 wgwBAa51EQVlRJUjGnzJBAo=
X-Google-Smtp-Source: APXvYqy6T4/8ZgLoXmJLsxsGqwB7Eo0HtOFOD79qEVhzhLWLIE0qcgikbTe/aMXNISkuimwhGPo/mg==
X-Received: by 2002:a17:902:da4:: with SMTP id
 33mr83216202plv.209.1564060470842; 
 Thu, 25 Jul 2019 06:14:30 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z12sm31263772pfn.29.2019.07.25.06.14.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 25 Jul 2019 06:14:30 -0700 (PDT)
Date: Thu, 25 Jul 2019 22:14:22 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Chuhong Yuan <hslester96@gmail.com>
Subject: Re: [PATCH] nvme-pci: Use dev_get_drvdata where possible
Message-ID: <20190725131422.GA7289@minwoo-desktop>
References: <20190724122235.21639-1-hslester96@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724122235.21639-1-hslester96@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_061432_472787_8512B520 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-07-24 20:22:35, Chuhong Yuan wrote:
> Instead of using to_pci_dev + pci_get_drvdata,
> use dev_get_drvdata to make code simpler.
> 
> Signed-off-by: Chuhong Yuan <hslester96@gmail.com>

This looks good to me.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
