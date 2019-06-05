Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B89636553
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 22:22:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqvPpWUY9CFQ7biHXbAaa5yl1Q/a7TEGBf6TC0tUWok=; b=kSax+JnMSKkz2G
	goJZGnLv50QTL4AaOLACugCQ3rjEB7MaPaK5r+rAKa7L3EpLGub3bwTovB/DVqvIB3MLwEyiHY9vK
	1Um1Lpe9f25CARQpuuu3M0PJKnGJ5fwb2Uyq3XmShhtvQ0Bjhz8nasf2Ob6jcJVLUw3qMxBQeLE/X
	nFS/0JpZhdsco6ftOSiFOYm+yOwgY3h43bW+z9TwV1YrFSwB3KjKpF3kBF44gFVNvysejNBxjZyJM
	DtdD/TmTMGxu5tA5ZwcjCBaVTZ2PKIpjI+B1OYu+D/ub0jXnGgfe/WhHpgYrANWm3m7HPm6GBbhvw
	An1ndjHwlW96HH8gRXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYcQl-0001bf-PD; Wed, 05 Jun 2019 20:22:43 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYcQh-0001ax-GU
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 20:22:40 +0000
Received: by mail-qk1-x743.google.com with SMTP id d15so69276qkl.4
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 13:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hdVKMo8506TgrZK1PYQwv5IIzq/3ub7YoF/TJnHz4iQ=;
 b=jn33M/OLPMrHDhWB/oB3uBW6KyUZwZ3dHbeuh1XlGJHpj6dwZhMsOO5OOrjM6STAk4
 qROquiS6fMH0HrsaHJQe7IWfco1/3CwVA1Gz+FGmFpUONVqiEw31nfTAMmDzWlOeuUEZ
 mk6d5RDBk04fmPauqpzDR3UBYRMhcvzlsYSc74mHKl9XePav6wRDF+ORoRV2fKHFG/sb
 cUQUGUyyBaCwXiDs4NT1HvJhutfWYLBEeCwb+RHe4UP0YFMmyv3lmlZz7HJMeHb2peh0
 c0KHydFemqtXhwO8HH1TOYZIPA8HQnsiNT2WYwoU7yhfgAcf8QGzWgN4SKzBFML0mJnJ
 tpyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hdVKMo8506TgrZK1PYQwv5IIzq/3ub7YoF/TJnHz4iQ=;
 b=L+oNi784u2W3ge4aH0LD91fZ3PyM9NSE2o5+K1xP4fcnaFCrWoT2V5Wqhod9viggjn
 HD2jDoMYDe9ODSwGBsmZAg+dNl6dZ/MGVxcEIthGGE87L26l83SRAXUCicLFhSZFPND9
 R3bm07y7eWrD3fSM8cvn68aYI0HBdtIhRi0XuhgBIE042S6OUMc6spdBZfeKIjdIbCQg
 ucf8Jyb8nJgXabN4KvLQGGwPaK8jgTOkOKvKEan4A6R6/gpk3Us9Nm9I5Vj1ZelUo03w
 YDmZBe1DTM4IlFV+epabZ7fz7CbGKb16do1KUayQ7st4aR+dvmaRcE8VQ88D6LFMQWpY
 j/bw==
X-Gm-Message-State: APjAAAUd5BRRu/ZZNSCaGgDD8si0PGVigkFsB8RiqKGnNuPF5nkeITFF
 ekAJuAAYUXeZbHz4GBwRuziH8Q==
X-Google-Smtp-Source: APXvYqzsyiPSTmn82JkgPtH+Z1+lnK81jan/CvvnzRGGA4oYrI2ETBGBe6mNB1mjYk7SLXHnNDomow==
X-Received: by 2002:a37:6312:: with SMTP id x18mr35736460qkb.300.1559766157655; 
 Wed, 05 Jun 2019 13:22:37 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id v9sm884883qti.60.2019.06.05.13.22.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 13:22:36 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hYcQd-0002uk-Vd; Wed, 05 Jun 2019 17:22:35 -0300
Date: Wed, 5 Jun 2019 17:22:35 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
Message-ID: <20190605202235.GC3273@ziepe.ca>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-9-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190605190836.32354-9-hch@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_132239_732495_C1BDBE47 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 MPT-FusionLinux.pdl@broadcom.com, megaraidlinux.pdl@broadcom.com,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 05, 2019 at 09:08:31PM +0200, Christoph Hellwig wrote:
> This ensures all proper DMA layer handling is taken care of by the
> SCSI midlayer.

Maybe not entirely related to this series, but it looks like the SCSI
layer is changing the device global dma_set_max_seg_size() - at least
in RDMA the dma device is being shared between many users, so we
really don't want SCSI to make this value smaller.

Can we do something about this?

Wondering about other values too, and the interaction with the new
combining stuff in umem.c

Thanks,
Jason

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
