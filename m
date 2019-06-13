Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E944CDD
	for <lists+linux-nvme@lfdr.de>; Thu, 13 Jun 2019 22:04:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:MIME-Version
	:In-Reply-To:References:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4nrTLyZooKscsi3urJcSsYFpmFHMj0fSz0QenRDGio=; b=YnjckVv+hqUleZ
	foZ8w7n7Olkh6vb647LXFVHiBEb+Img5dsO7F76n/hlyq0ShLU4KUsf02UNwQjT5pOLrc+PwXO+1k
	idmMzB3ykSxABcLbfMCHufHuNGU2yTxmcKXujkM0R1dEPnhVgOrS03avHLs3u1yTMimVgDr0f9Xbo
	x2eDOOVc2xx2SP7vMHI6NeaDh5e4rKTdaMDvkc6d6MpNPlUcCbvEV6bXSuQqnasbugFCSo0cJmpAR
	PzqpDap70veCwV7PKyMZtUlArnQlJ92FTk03HpOTGyCfZqeVRE8rQm4cZxRlX0jJA11XJZ56SPxuo
	ATnTnzPq76UU3NHVB++g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVxg-0007H2-2Z; Thu, 13 Jun 2019 20:04:40 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVxJ-00074s-Iv
 for linux-nvme@lists.infradead.org; Thu, 13 Jun 2019 20:04:18 +0000
Received: by mail-io1-xd2e.google.com with SMTP id e5so726826iok.4
 for <linux-nvme@lists.infradead.org>; Thu, 13 Jun 2019 13:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:references:in-reply-to:mime-version:thread-index:date
 :message-id:subject:to:cc;
 bh=DI3nny5EkaaAj92ROhz8+oF1JyVO+F50iFiYFfny5cg=;
 b=Vf0Co9J1FWQf/mNg9X22WqwFrqk1bWNDchM2WOC0coX4mVxqvFdL4M7qSSiticNd+/
 +3h8YyGJXb6Dp9fwIq4WsLEKSNJVZR/j3S/HsXXpkjb7r3yKx1VfkTt2fSEW7Upj2InB
 vpUy4mSkuPaOLlVxWUk8m4jGlNkrR8m+OQY9c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:references:in-reply-to:mime-version
 :thread-index:date:message-id:subject:to:cc;
 bh=DI3nny5EkaaAj92ROhz8+oF1JyVO+F50iFiYFfny5cg=;
 b=rux3mKyVdNAqEUgpU8i76jNSKFe69LtAdmX6JLYmiR2zZhgHLinQ7UKqToFMPsYz7w
 6fwaYFR/BfK4Q8D96GxP0iotZgFWJmxJLnbJJCIuz6MkYIFhT0u5PagZbG40285Qigca
 1YNPm34WBpZR1YY70NexPNO8fJktO611QcpdXqhZVSGx4426QbEN4zxFI3U1/VWvmpdd
 zr6BGpFqCqLLA7iyx8Hj5n8Dw1lpw8cqwanUyrwZprOWdFnEsMmU4UMWrpneBuD9zspZ
 FfudEkr6MXG7/jPsU8lhqzJjSkELvBkYe/P6B0vzSH6/ftzO89XQHIOf5GLsQARt+fKT
 og7Q==
X-Gm-Message-State: APjAAAVQJjceaSyyhqmvDc5wNAfGaIv1yg8rHqDSW6vxZVVKak/OhZpW
 lTc0RN3qp1xhPE4EoTTIjLoY5FfL/NT2PHHYYQqBrQ==
X-Google-Smtp-Source: APXvYqzt6T4yoFnlQQM4Io9z3VVKv9jXWB1wt4QkxYaqK+pkTNNNf6XRH7RjKzaoumZniM5JtnYN2SZhYMEkCQ+APaM=
X-Received: by 2002:a5d:9b1a:: with SMTP id y26mr37376851ion.238.1560456255599; 
 Thu, 13 Jun 2019 13:04:15 -0700 (PDT)
From: Kashyap Desai <kashyap.desai@broadcom.com>
References: <20190605190836.32354-1-hch@lst.de>
 <20190605190836.32354-11-hch@lst.de>
 <cd713506efb9579d1f69a719d831c28d@mail.gmail.com>
 <20190613084458.GB13221@lst.de>
In-Reply-To: <20190613084458.GB13221@lst.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQNLjZIO2zMn7N+9xPobnDbFSu4o5gI2RJdJAgF+bYgCEzcr9aN60eSw
Date: Fri, 14 Jun 2019 01:34:00 +0530
Message-ID: <d411baa1bdd34f1a1289480d13fe1cef@mail.gmail.com>
Subject: RE: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi
 host
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_130417_626176_FC5E4ADE 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Ulf Hansson <ulf.hansson@linaro.org>,
 linux-usb@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 Sebastian Ott <sebott@linux.ibm.com>, linux-rdma@vger.kernel.org,
 Oliver Neukum <oneukum@suse.com>, linux-mmc@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 usb-storage@lists.one-eyed-alien.net, Alan Stern <stern@rowland.harvard.edu>,
 linux-scsi@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 PDL-MPT-FUSIONLINUX <mpt-fusionlinux.pdl@broadcom.com>, "PDL,
 MEGARAIDLINUX" <megaraidlinux.pdl@broadcom.com>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>
> So before I respin this series, can you help with a way to figure out
for
> mpt3sas and megaraid if a given controller supports NVMe devices at all,
so
> that we don't have to set the virt boundary if not?


In MegaRaid we have below enum -        VENTURA_SERIES and AERO_SERIES
supports NVME

enum MR_ADAPTER_TYPE {
        MFI_SERIES = 1,
        THUNDERBOLT_SERIES = 2,
        INVADER_SERIES = 3,
        VENTURA_SERIES = 4,
        AERO_SERIES = 5,
};

In mpt3sas driver we have below method - If IOC FACT reports NVME Device
support in Protocol Flags, we can consider it as HBA with NVME drive
support.

ioc->facts.ProtocolFlags & MPI2_IOCFACTS_PROTOCOL_NVME_DEVICES

Kashyap

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
